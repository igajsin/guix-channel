(define-module (packages emacs)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system glib-or-gtk)
  #:use-module (gnu packages)
  #:use-module (gnu packages acl)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages fribidi)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gd)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)     ; for librsvg
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages image)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages lesstif)   ; motif
  #:use-module (gnu packages linux)     ; alsa-lib, gpm
  #:use-module (gnu packages mail)      ; for mailutils
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages selinux)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages tree-sitter)
  #:use-module (gnu packages web)       ; for jansson
  #:use-module (gnu packages webkit)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg)
  #:use-module (guix utils)
  #:use-module (ice-9 match)
  #:use-module (srfi srfi-1))

(define (%emacs-modules build-system)
  (let ((which (build-system-name build-system)))
    `((guix build ,(symbol-append which '-build-system))
      (guix build utils)
      (srfi srfi-1)
      (ice-9 ftw))))

(define-public emacs
  (package
    (name "emacs")
    (version "28.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://gnu/emacs/emacs-"
                                  version ".tar.xz"))
              (sha256
               (base32
                "12144dcaihv2ymfm7g2vnvdl4h71hqnsz1mljzf34cpg6ci1h8gf"))
              (patches (search-patches "emacs-exec-path.patch"
                                       "emacs-fix-scheme-indent-function.patch"
                                       "emacs-source-date-epoch.patch"))
              (modules '((guix build utils)))
              (snippet
               '(with-directory-excursion "lisp"
                  ;; Delete the bundled byte-compiled elisp files and generated
                  ;; autoloads.
                  (for-each delete-file
                            (append (find-files "." "\\.elc$")
                                    (find-files "." "loaddefs\\.el$")
                                    (find-files "eshell" "^esh-groups\\.el$")))

                  ;; Make sure Tramp looks for binaries in the right places on
                  ;; remote Guix System machines, where 'getconf PATH' returns
                  ;; something bogus.
                  (substitute* "net/tramp.el"
                    ;; Patch the line after "(defcustom tramp-remote-path".
                    (("\\(tramp-default-remote-path")
                     (format #f "(tramp-default-remote-path ~s ~s ~s ~s "
                             "~/.guix-profile/bin" "~/.guix-profile/sbin"
                             "/run/current-system/profile/bin"
                             "/run/current-system/profile/sbin")))

                  ;; Make sure Man looks for C header files in the right
                  ;; places.
                  (substitute* "man.el"
                    (("\"/usr/local/include\"" line)
                     (string-join
                      (list line
                            "\"~/.guix-profile/include\""
                            "\"/var/guix/profiles/system/profile/include\"")
                      " ")))))))
    (build-system glib-or-gtk-build-system)
    (arguments
     (list
      #:tests? #f                      ; no check target
      #:modules (%emacs-modules build-system)
      #:configure-flags #~(list "--with-modules"
                                "--with-cairo"
                                "--with-native-compilation"
                                "--disable-build-details"
				"--with-imagemagick")
      #:make-flags #~(list "NATIVE_FULL_AOT=1")
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'set-paths 'set-libgccjit-path
            (lambda* (#:key inputs #:allow-other-keys)
              (define (first-subdirectory/absolute directory)
                (let ((files (scandir
                              directory
                              (lambda (file)
                                (and (not (member file '("." "..")))
                                     (file-is-directory? (string-append
                                                          directory "/"
                                                          file)))))))
                  (and (not (null? files))
                       (string-append directory "/" (car files)))))
              (let* ((libgccjit-libdir
                      (first-subdirectory/absolute ;; version
                       (first-subdirectory/absolute ;; host type
                        (search-input-directory inputs "lib/gcc")))))
                (setenv "LIBRARY_PATH"
                        (string-append (getenv "LIBRARY_PATH")
                                       ":" libgccjit-libdir)))))
          (add-after 'unpack 'enable-elogind
            (lambda _
              (substitute* "configure.ac"
                (("libsystemd") "libelogind"))
              (when (file-exists? "configure")
                (delete-file "configure"))))
          (add-after 'unpack 'patch-program-file-names
            (lambda* (#:key inputs #:allow-other-keys)
              (substitute* '("src/callproc.c"
                             "lisp/term.el"
                             "lisp/htmlfontify.el"
                             "lisp/textmodes/artist.el"
                             "lisp/progmodes/sh-script.el")
                (("\"/bin/sh\"")
                 (format #f "~s" (search-input-file inputs "/bin/sh"))))
              (substitute* "lisp/doc-view.el"
                (("\"(gs|dvipdf|ps2pdf|pdftotext)\"" all what)
                 (let ((replacement (false-if-exception
                                     (search-input-file
                                      inputs
                                      (string-append "/bin/" what)))))
                   (if replacement
                       (string-append "\"" replacement "\"")
                       all))))
              ;; match ".gvfs-fuse-daemon-real" and ".gvfsd-fuse-real"
              ;; respectively when looking for GVFS processes.
              (substitute* "lisp/net/tramp-gvfs.el"
                (("\\(tramp-compat-process-running-p \"(.*)\"\\)" all process)
                 (format #f "(or ~a (tramp-compat-process-running-p ~s))"
                         all (string-append "." process "-real"))))))
          (add-after 'unpack 'patch-compilation-driver
            (lambda _
              (substitute* "lisp/emacs-lisp/comp.el"
                (("\\(defcustom native-comp-driver-options nil")
                 (format
                  #f "(defcustom native-comp-driver-options '(~@{~s~^ ~})"
                  (string-append
                   "-B" #$(this-package-input "binutils") "/bin/")
                  (string-append
                   "-B" #$(this-package-input "glibc") "/lib/")
                  (string-append
                   "-B" #$(this-package-input "libgccjit") "/lib/")
                  (string-append
                   "-B" #$(this-package-input "libgccjit") "/lib/gcc/"))))))
          (add-before 'configure 'fix-/bin/pwd
            (lambda _
              ;; Use `pwd', not `/bin/pwd'.
              (substitute* (find-files "." "^Makefile\\.in$")
                (("/bin/pwd")
                 "pwd"))))
          (add-after 'install 'install-site-start
            ;; Use 'guix-emacs' in "site-start.el", which is used autoload the
            ;; Elisp packages found in EMACSLOADPATH.
            (lambda* (#:key inputs outputs #:allow-other-keys)
              (let* ((out      (assoc-ref outputs "out"))
                     (lisp-dir (string-append out "/share/emacs/site-lisp"))
                     (emacs    (string-append out "/bin/emacs")))

                ;; This is duplicated from emacs-utils to prevent coupling.
                (define* (emacs-byte-compile-directory dir)
                  (let ((expr `(progn
                                (setq byte-compile-debug t)
                                (byte-recompile-directory
                                 (file-name-as-directory ,dir) 0 1))))
                    (invoke emacs "--quick" "--batch"
                            (format #f "--eval=~s" expr))))

                (copy-file #$(local-file
                              (search-auxiliary-file "emacs/guix-emacs.el"))
                           (string-append lisp-dir "/guix-emacs.el"))
                (with-output-to-file (string-append lisp-dir "/site-start.el")
                  (lambda ()
                    (display
                     (string-append
                      "(when (require 'guix-emacs nil t)\n"
                      "  (guix-emacs-autoload-packages)\n"
                      "  (advice-add 'package-load-all-descriptors"
                      " :after #'guix-emacs-load-package-descriptors))"))))
                ;; Remove the extraneous subdirs.el file, as it causes Emacs to
                ;; add recursively all the the sub-directories of a profile's
                ;; share/emacs/site-lisp union when added to EMACSLOADPATH,
                ;; which leads to conflicts.
                (delete-file (string-append lisp-dir "/subdirs.el"))
                ;; Byte compile the site-start files.
                (emacs-byte-compile-directory lisp-dir))))
          (add-after 'glib-or-gtk-wrap 'restore-emacs-pdmp
            ;; restore the dump file that Emacs installs somewhere in
            ;; libexec/ to its original state
            (lambda* (#:key outputs target #:allow-other-keys)
              (let* ((libexec (string-append (assoc-ref outputs "out")
                                             "/libexec"))
                     ;; each of these ought to only match a single file,
                     ;; but even if not (find-files) sorts by string<,
                     ;; so the Nth element in one maps to the Nth element of
                     ;; the other
                     (pdmp (find-files libexec "\\.pdmp$"))
                     (pdmp-real (find-files libexec "\\.pdmp-real$")))
                (for-each rename-file pdmp-real pdmp))))
          (add-after 'glib-or-gtk-wrap 'strip-double-wrap
            (lambda* (#:key outputs #:allow-other-keys)
              ;; Directly copy emacs-X.Y to emacs, so that it is not wrapped
              ;; twice.  This also fixes a minor issue, where WMs would not be
              ;; able to track emacs back to emacs.desktop.
              (with-directory-excursion (assoc-ref outputs "out")
                (copy-file
                 (car (find-files "bin" "^emacs-([0-9]+\\.)+[0-9]+$"))
                 "bin/emacs"))))
          (add-after 'strip-double-wrap 'wrap-emacs-paths
            (lambda* (#:key inputs outputs #:allow-other-keys)
              (let* ((out (assoc-ref outputs "out"))
                     (lisp-dirs (find-files (string-append out "/share/emacs")
                                            "^lisp$"
                                            #:directories? #t)))
                (for-each
                 (lambda (prog)
                   (wrap-program prog
                     ;; emacs-next and variants rely on uname being in PATH for
                     ;; Tramp.  Tramp paths can't be hardcoded, because they
                     ;; need to be portable.
                     `("PATH" suffix
                       ,(map dirname
                             (list (search-input-file inputs "/bin/gzip")
                                   ;; for coreutils
                                   (search-input-file inputs "/bin/yes"))))
                     `("EMACSLOADPATH" suffix ,lisp-dirs)))
                 (find-files (string-append out "/bin")
                             ;; Matches versioned and unversioned emacs binaries.
                             ;; We don't patch emacsclient, because it takes its
                             ;; environment variables from emacs.
                             ;; Likewise, we don't need to patch helper binaries
                             ;; like etags, ctags or ebrowse.
                             "^emacs(-[0-9]+(\\.[0-9]+)*)?$"))))))))
    (inputs
     (list gnutls
           ncurses

           ;; To "unshadow" ld-wrapper in native builds
           (make-ld-wrapper "ld-wrapper" #:binutils binutils)

           ;; For native compilation
           binutils
           glibc
           libgccjit

           ;; Required for "core" functionality, such as dired and compression.
           coreutils
           gzip

           ;; Avoid Emacs's limited movemail substitute that retrieves POP3
           ;; email only via insecure channels.
           ;; This is not needed for (modern) IMAP.
	   imagemagick
           mailutils

           gpm
           libx11
           gtk+
           cairo
           pango
           harfbuzz
           libxft
           libtiff
           giflib
           lcms
           libjpeg-turbo
           libselinux
           acl
           jansson
           gmp
           ghostscript
           poppler
           elogind

           ;; When looking for libpng `configure' links with `-lpng -lz', so we
           ;; must also provide zlib as an input.
           libpng
           zlib
           (if (target-x86-64?)
               librsvg-bootstrap
               librsvg-2.40)
           libxpm
           libxml2
           libice
           libsm
           alsa-lib
           dbus

           ;; multilingualization support
           libotf
           m17n-lib))
    (native-inputs
     (list autoconf pkg-config texinfo))
    (native-search-paths
     (list (search-path-specification
            (variable "EMACSLOADPATH")
            (files '("share/emacs/site-lisp")))
           (search-path-specification
            (variable "EMACSNATIVELOADPATH")
            (files '("lib/emacs/native-site-lisp")))
           (search-path-specification
            (variable "INFOPATH")
            (files '("share/info")))
           ;; tree-sitter support is not yet available in emacs 28, but this
           ;; search path won't harm and also will be beneficial for
           ;; emacs-next and other emacs-* packages, which have tree-sitter
           ;; support enabled.  Please, remove this comment, when emacs
           ;; package is updated to 29.
           (search-path-specification
            (variable "TREE_SITTER_GRAMMAR_PATH")
            (files '("lib/tree-sitter")))))

    (home-page "https://www.gnu.org/software/emacs/")
    (synopsis "The extensible, customizable, self-documenting text editor")
    (description
     "GNU Emacs is an extensible and highly customizable text editor.  It is
based on an Emacs Lisp interpreter with extensions for text editing.  Emacs
has been extended in essentially all areas of computing, giving rise to a
vast array of packages supporting, e.g., email, IRC and XMPP messaging,
spreadsheets, remote server editing, and much more.  Emacs includes extensive
documentation on all aspects of the system, from basic editing to writing
large Lisp programs.  It has full Unicode support for nearly all human
languages.")
    (license license:gpl3+)))

(define-public emacs-next
  (let ((commit "f1f571e72ae10285762d3a941e56f7c4048272af")
        (revision "1"))
    (package
      (inherit emacs)
      (name "emacs-next")
      (version (git-version "29.0.60" revision commit))
      (source
       (origin
         (inherit (package-source emacs))
         (method git-fetch)
         (uri (git-reference
               (url "https://git.savannah.gnu.org/git/emacs.git/")
               (commit commit)))
         (file-name (git-file-name name version))
         ;; emacs-source-date-epoch.patch is no longer necessary
         (patches (search-patches "emacs-exec-path.patch"
                                  "emacs-fix-scheme-indent-function.patch"
                                  "emacs-native-comp-driver-options.patch"))
         (sha256
          (base32
           "1rildbxq53yvc2rllg2qccgxzbbnr6qbija0lyqacsy8dlzaysch"))))
      (inputs
       (modify-inputs (package-inputs emacs)
         (prepend sqlite)))
      (native-inputs
       (modify-inputs (package-native-inputs emacs)
         (prepend autoconf))))))

(define-public my-emacs-next-tree-sitter
  (let ((commit "ac7ec87a7a0db887e4ae7fe9005aea517958b778")
        (revision "0"))
    (package
      (inherit emacs-next)
      (name "my-emacs-next-tree-sitter")
      (version (git-version "30.0.50" revision commit))
      (source
       (origin
         (inherit (package-source emacs-next))
         (method git-fetch)
         (uri (git-reference
               (url "https://git.savannah.gnu.org/git/emacs.git/")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32
           "1akq6dbllwwqwx21wnwnv6aax1nsi2ypbd7j3i79sw62s3gf399z"))))
      (inputs
       (modify-inputs (package-inputs emacs-next)
         (prepend sqlite tree-sitter)))
      (synopsis "Emacs text editor with @code{tree-sitter} support")
      (description "This Emacs build supports tree-sitter."))))
