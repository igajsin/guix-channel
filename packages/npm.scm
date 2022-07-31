(define-module (packages npm)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system node))

(define-public npm-yarn
  (package
    (name "npm-yarn")
    (version "1.22.19")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
	     (url "https://github.com/yarnpkg/yarn")
	     (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
	(base32 "13ja1ap9sh9mpi39wd3scgalgxs4rms6ngyknzg1sl5za1r9k4cp"))))
    (build-system node-build-system)
    (home-page "https://github.com/yarnpkg/yarn")
    (properties '((hidden? . #t)))
    (synopsis "Fast, reliable, and secure dependency management.")
    (description
     "@code{node-yarn} is a Node package manager.")
    (license license:bsd-2)))
