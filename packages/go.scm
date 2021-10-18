(define-module (packages go)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix build-system go))

(define-public go-github-com-go-sourcemap-sourcemap
  (package
   (name "go-github-com-go-sourcemap-sourcemap")
   (version "v2.1.3")
   (source
    (origin
     (method git-fetch)
     (uri (git-reference
	   (url "https://github.com/go-sourcemap/sourcemap.git")
	   (commit version)))
     (sha256
      (base32 "08i1xysiqbqzip3xjlkwivg8cbcym83hxwyzkbmjy0z7y8y5fy3r"))
     (file-name (git-file-name name version))))
   (build-system go-build-system)
   (arguments
    '(#:import-path "github.com/go-sourcemap/sourcemap"
      #:tests? #f)) ;; a test depends on an Internet. No go.
   (home-page "https://github.com/go-sourcemap/sourcemap")
   (synopsis "Source maps consumer for Golang")
   (description "Source maps consumer for Golang")
   (license license:bsd-2)))
