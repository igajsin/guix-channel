;; (define-module (packages etherium)
;;   #:use-module (guix packages)
;;   #:use-module ((guix licenses) #:prefix license:)
;;   #:use-module (guix git-download)
;;   #:use-module (guix build-system go))

;; (define-public geth
;;   (package
;;    (name "geth")
;;    (version "v1.10.10")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;; 	   (url "https://github.com/ethereum/go-ethereum")
;; 	   (commit version)))
;;      (sha256
;;       (base32 "1nbli012bapw7bz6113wqaq8sx86hgnmy3v6ka0b1f26hq3p9p0s"))
;;      (file-name (git-file-name name version))))
;;    (build-system go-build-system)
;;    (arguments
;;      '(#:import-path "github.com/ethereum/go-ethereum"))
;;    (home-page "https://geth.ethereum.org")
;;    (synopsis "the go-ethereum command line interface")
;;    (description "Official Go implementation of the Ethereum protocol")
;;    (license license:lgpl3)))
