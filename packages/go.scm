;; (define-module (packages go)
;;   #:use-module (guix packages)
;;   #:use-module ((guix licenses) #:prefix license:)
;;   #:use-module (guix git-download)
;;   #:use-module (guix build-system go))

;; ;; TODO: fix tests
;; (define-public go-github-com-go-sourcemap-sourcemap
;;   (package
;;    (name "go-github-com-go-sourcemap-sourcemap")
;;    (version "v2.1.3")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;; 	   (url "https://github.com/go-sourcemap/sourcemap.git")
;; 	   (commit version)))
;;      (sha256
;;       (base32 "08i1xysiqbqzip3xjlkwivg8cbcym83hxwyzkbmjy0z7y8y5fy3r"))
;;      (file-name (git-file-name name version))))
;;    (build-system go-build-system)
;;    (arguments
;;     '(#:import-path "github.com/go-sourcemap/sourcemap"
;;       #:tests? #f)) ;; a test depends on an Internet. No go.
;;    (home-page "https://github.com/go-sourcemap/sourcemap")
;;    (synopsis "Source maps consumer for Golang")
;;    (description "Source maps consumer for Golang")
;;    (license license:bsd-2)))

;; ;; TODO: fix license
;; (define-public go-github-com-tyler-smith-assert
;;   (package
;;    (name "go-github-com-tyler-smith-assert")
;;    (version "v1.0.1")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;; 	   (url "https://github.com/tyler-smith/assert.git")
;; 	   (commit version)))
;;      (sha256
;;       (base32 "1vrhsnzwp8lq564ll58nmdpzrlfq9jjp7xp9wn3n4c4smjaci0gy"))
;;      (file-name (git-file-name name version))))
;;    (build-system go-build-system)
;;    (arguments
;;     '(#:import-path "github.com/tyler-smith/assert"))
;;    (home-page "https://github.com/tyler-smith/assert")
;;    (synopsis "A helper for the BIP39 library for Go")
;;    (description "A helper for the BIP39 library for Go")
;;    (license license:bsd-2))) ;; not true it's the MIT license

;; ;; TODO: fix license
;; (define-public go-github-com-tyler-smith-go-bip39
;;   (package
;;    (name "go-github-com-tyler-smith-go-bip39")
;;    (version "v1.1.0")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;; 	   (url "https://github.com/tyler-smith/go-bip39.git")
;; 	   (commit version)))
;;      (sha256
;;       (base32 "0daadv14696l9zq5nny1wbg4c5m6lsmw5kdvkfqb2i5hsh35d26x"))
;;      (file-name (git-file-name name version))))
;;    (build-system go-build-system)
;;    (arguments
;;     '(#:import-path "github.com/tyler-smith/go-bip39"))
;;    (propagated-inputs
;;      `(("go-github-com-tyler-smith-assert"
;;         ,go-github-com-tyler-smith-assert)))
;;    (home-page "https://github.com/tyler-smith/go-bip39")
;;    (synopsis "The BIP39 library for Go")
;;    (description "The BIP39 library for Go")
;;    (license license:bsd-2))) ;; not true it's the MIT license
