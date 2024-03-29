(define-module (packages go-ethereum)
  #:use-module (guix packages)
  #:use-module (gnu packages golang)
  #:use-module (gnu packages syncthing)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (guix build-system go))

;; (define-public go-github-com-sourcegraph-annotate
;;   (package
;;    (name "go-github-com-sourcegraph-annotate")
;;    (version "f4cad6c6324d3f584e1743d8b3e0e017a5f3a636")
;;    (source
;;     (origin
;;      (method git-fetch)
;;      (uri (git-reference
;; 	   (url "https://github.com/sourcegraph/annotate")
;; 	   (commit version)))
;;      (file-name (git-file-name name version))
;;      (sha256
;;       (base32 "13ja1ap9sh9mpi39wd3scgalgxs4rms6ngyknzg1sl5za1r9k4cp"))))
;;    (build-system go-build-system)
;;      (arguments '(#:import-path "github.com/sourcegraph/annotate"))
;;      (home-page "https://github.com/sourcegraph/annotate")
;;      (synopsis "go annotation")
;;      (description
;;       "Go package for applying multiple sets of annotations to a region of text")
;;      (license license:bsd-3)))

;; (define-public go-github-com-microsoft-go-winio
;;   (package
;;     (name "go-github-com-microsoft-go-winio")
;;     (version "0.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/microsoft/go-winio")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "180fvli0g005bs7ahsm00w4b9nmz9qqkrqn7dy8wqfi7fph1ssff"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Microsoft/go-winio"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)))
;;     (home-page "https://github.com/Microsoft/go-winio")
;;     (synopsis "go-winio")
;;     (description
;;       "This repository contains utilities for efficiently performing Win32 IO operations in
;; Go.  Currently, this is focused on accessing named pipes and other file handles, and
;; for using named pipes as a net transport.")
;;     (license license:expat)))

;; (define-public go-github-com-apparentlymart-go-cidr
;;   (package
;;     (name "go-github-com-apparentlymart-go-cidr")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/apparentlymart/go-cidr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "12b8qhazgdqr9p3sw5vma7va5j1fvm454cyd0ccc0wi96df3wk4i"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/apparentlymart/go-cidr"))
;;     (home-page "https://github.com/apparentlymart/go-cidr")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-flynn-go-shlex
;;   (package
;;     (name "go-github-com-flynn-go-shlex")
;;     (version "0.0.0-20150515145356-3f9db97f8568")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/flynn-archive/go-shlex")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1j743lysygkpa2s2gii2xr32j7bxgc15zv4113b0q9jhn676ysia"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/flynn/go-shlex"))
;;     (home-page "https://github.com/flynn/go-shlex")
;;     (synopsis #f)
;;     (description
;;       "go-shlex is a simple lexer for go that supports shell-style quoting,
;; commenting, and escaping.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-coredns-caddy
;;   (package
;;     (name "go-github-com-coredns-caddy")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/coredns/caddy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0n687hqj97nl2v3fzlk0lpxnz3a5n457w21vjz8ggqcj6frqmjnl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/coredns/caddy"))
;;     (propagated-inputs
;;       `(("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-flynn-go-shlex" ,go-github-com-flynn-go-shlex)))
;;     (home-page "https://github.com/coredns/caddy")
;;     (synopsis "Menu")
;;     (description "Package caddy implements the Caddy server manager.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-dnstap-golang-dnstap
;;   (package
;;     (name "go-github-com-dnstap-golang-dnstap")
;;     (version "0.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dnstap/golang-dnstap")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zlypx3a45i48rhxwss59mhfdvr5mb9a2pjk207pgq0hl0khfv0s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dnstap/golang-dnstap"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-farsightsec-golang-framestream"
;;          ,go-github-com-farsightsec-golang-framestream)))
;;     (home-page "https://github.com/dnstap/golang-dnstap")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:asl2.0)))

;; (define-public go-github-com-farsightsec-golang-framestream
;;   (package
;;     (name "go-github-com-farsightsec-golang-framestream")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/farsightsec/golang-framestream")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10qpw9fk99dnqbgm1srkgjjzw0zbxnvd48r7lslksxjs2d9hmahf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/farsightsec/golang-framestream"))
;;     (home-page "https://github.com/farsightsec/golang-framestream")
;;     (synopsis "Frame Streams implementation in Go")
;;     (description
;;       "Frame Streams is a lightweight, binary-clean protocol that allows
;; for the transport of arbitrarily encoded data payload sequences with
;; minimal framing overhead.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-grpc-ecosystem-grpc-opentracing
;;   (package
;;     (name "go-github-com-grpc-ecosystem-grpc-opentracing")
;;     (version "0.0.0-20180507213350-8e809c8a8645")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/grpc-ecosystem/grpc-opentracing")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1yz3gxhdipmi63n32y5srwx7p254k3fm8y64cimkb1gz7sw99nxw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/grpc-ecosystem/grpc-opentracing"))
;;     (home-page "https://github.com/grpc-ecosystem/grpc-opentracing")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-3)))

;; (define-public go-github-com-infobloxopen-go-trees
;;   (package
;;     (name "go-github-com-infobloxopen-go-trees")
;;     (version "0.0.0-20200715205103-96a057b8dfb9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/infobloxopen/go-trees")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "19c2labaam66a27kpq8mvaica0y0r50jn1db3zqplrvildlnxh4x"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/infobloxopen/go-trees"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-pmezard-go-difflib"
;;          ,go-github-com-pmezard-go-difflib)))
;;     (home-page "https://github.com/infobloxopen/go-trees")
;;     (synopsis "go-trees")
;;     (description "go packages for radix and other trees")
;;     (license license:asl2.0)))

;; (define-public go-github-com-opentracing-contrib-go-observer
;;   (package
;;     (name "go-github-com-opentracing-contrib-go-observer")
;;     (version "0.0.0-20170622124052-a52f23424492")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/opentracing-contrib/go-observer")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1q7z458m2vh3bzml4x9vm2paffqn1jcgiydbisl0zg2asfniq7k3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/opentracing-contrib/go-observer"))
;;     (home-page "https://github.com/opentracing-contrib/go-observer")
;;     (synopsis "An Observer API for OpenTracing-go Tracers")
;;     (description
;;       "OTObserver can be used to watch the span events like StartSpan(),
;; SetOperationName(), SetTag() and Finish().  A need for observers
;; arose when information (metrics) more than just the latency information was
;; required for the spans, in the distributed tracers.  But, there can be a lot
;; of metrics in different domains and adding such metrics to any one (client)
;; tracer breaks cross-platform compatibility.  There are various ways to
;; avoid such issues, however, an observer pattern is cleaner and provides loose
;; coupling between the packages exporting metrics (on span events) and the
;; tracer.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-openzipkin-contrib-zipkin-go-opentracing
;;   (package
;;     (name "go-github-com-openzipkin-contrib-zipkin-go-opentracing")
;;     (version "0.4.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/openzipkin-contrib/zipkin-go-opentracing")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mdvx50mw17c926rhhkjg8z54v8h0jvnqahdlpij2kbxi3ncgr7q"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/openzipkin-contrib/zipkin-go-opentracing"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-openzipkin-zipkin-go"
;;          ,go-github-com-openzipkin-zipkin-go)
;;         ("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)
;;         ("go-github-com-opentracing-contrib-go-observer"
;;          ,go-github-com-opentracing-contrib-go-observer)
;;         ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)))
;;     (home-page "https://github.com/openzipkin-contrib/zipkin-go-opentracing")
;;     (synopsis "zipkin-go-opentracing")
;;     (description
;;       "@url{http://opentracing.io,OpenTracing} bridge for the native @url{https://zipkin.io,Zipkin} tracing implementation @url{https://github.com/openzipkin/zipkin-go,Zipkin Go}.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-datadog-gostackparse
;;   (package
;;     (name "go-github-com-datadog-gostackparse")
;;     (version "0.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/DataDog/gostackparse")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16si94ap1vrwjl5dinvb9c3d7h24g4ljz1q04639g9v9cjp7zs2q"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/DataDog/gostackparse"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/DataDog/gostackparse")
;;     (synopsis "gostackparse")
;;     (description
;;       "Package gostackparse parses goroutines stack traces as produced by panic()
;; or debug.Stack() at ~300 MiB/s.
;; ")
;;     (license (list license:bsd-3 license:asl2.0))))

;; (define-public go-github-com-datadog-sketches-go
;;   (package
;;     (name "go-github-com-datadog-sketches-go")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/DataDog/sketches-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "078bbb3fjb4028d6gjsxn8lbs6zacagywywqji2zcpqbl28ffbz1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/DataDog/sketches-go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/DataDog/sketches-go")
;;     (synopsis "sketches-go")
;;     (description
;;       "This repo contains Go implementations of the distributed quantile sketch algorithm
;; DDSketch [1].  DDSketch has relative-error guarantees for any quantile q in [0, 1].
;; That is if the true value of the qth-quantile is @code{x} then DDSketch returns a value @code{y}
;; such that @code{|x-y| / x < e} where @code{e} is the relative error parameter.  DDSketch is also
;; fully mergeable, meaning that multiple sketches from distributed systems can be combined
;; in a central node.")
;;     (license license:asl2.0)))

;; (define-public go-gopkg-in-datadog-dd-trace-go-v1
;;   (package
;;     (name "go-gopkg-in-datadog-dd-trace-go-v1")
;;     (version "1.34.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/DataDog/dd-trace-go.v1")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1986znwkmmsva4djlh9007nz7xgqvvzd3mvh0iasn9ps7p50ml85"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/DataDog/dd-trace-go.v1"
;;         #:unpack-path
;;         "gopkg.in/DataDog/dd-trace-go.v1"))
;;     (propagated-inputs
;;       `(("go-github-com-tinylib-msgp" ,go-github-com-tinylib-msgp)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-pprof" ,go-github-com-google-pprof)
;;         ("go-github-com-datadog-sketches-go"
;;          ,go-github-com-datadog-sketches-go)
;;         ("go-github-com-datadog-gostackparse"
;;          ,go-github-com-datadog-gostackparse)
;;         ("go-github-com-datadog-datadog-go"
;;          ,go-github-com-datadog-datadog-go)))
;;     (home-page "https://gopkg.in/DataDog/dd-trace-go.v1")
;;     (synopsis "Installing")
;;     (description
;;       "This module contains many packages, but most users should probably install the two packages below:")
;;     (license (list license:bsd-3 license:asl2.0))))

;; (define-public go-github-com-coredns-coredns
;;   (package
;;     (name "go-github-com-coredns-coredns")
;;     (version "1.8.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/coredns/coredns")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hj5ip0fn18k9hlv9cczj38dc2cgr2lxbd28gyyr5za00smwf7yi"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/coredns/coredns"))
;;     (propagated-inputs
;;       `(("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-k8s-io-client-go" ,go-k8s-io-client-go)
;;         ("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-k8s-io-api" ,go-k8s-io-api)
;;         ("go-gopkg-in-datadog-dd-trace-go-v1"
;;          ,go-gopkg-in-datadog-dd-trace-go-v1)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-go-etcd-io-etcd-client-v3" ,go-go-etcd-io-etcd-client-v3)
;;         ("go-go-etcd-io-etcd-api-v3" ,go-go-etcd-io-etcd-api-v3)
;;         ("go-github-com-stretchr-objx" ,go-github-com-stretchr-objx)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-philhofer-fwd" ,go-github-com-philhofer-fwd)
;;         ("go-github-com-oschwald-geoip2-golang"
;;          ,go-github-com-oschwald-geoip2-golang)
;;         ("go-github-com-openzipkin-zipkin-go"
;;          ,go-github-com-openzipkin-zipkin-go)
;;         ("go-github-com-openzipkin-contrib-zipkin-go-opentracing"
;;          ,go-github-com-openzipkin-contrib-zipkin-go-opentracing)
;;         ("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-matttproud-golang-protobuf-extensions"
;;          ,go-github-com-matttproud-golang-protobuf-extensions)
;;         ("go-github-com-infobloxopen-go-trees"
;;          ,go-github-com-infobloxopen-go-trees)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-grpc-ecosystem-grpc-opentracing"
;;          ,go-github-com-grpc-ecosystem-grpc-opentracing)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-farsightsec-golang-framestream"
;;          ,go-github-com-farsightsec-golang-framestream)
;;         ("go-github-com-dnstap-golang-dnstap"
;;          ,go-github-com-dnstap-golang-dnstap)
;;         ("go-github-com-coredns-caddy" ,go-github-com-coredns-caddy)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-apparentlymart-go-cidr"
;;          ,go-github-com-apparentlymart-go-cidr)
;;         ("go-github-com-microsoft-go-winio" ,go-github-com-microsoft-go-winio)
;;         ("go-github-com-azure-go-autorest-autorest-to"
;;          ,go-github-com-azure-go-autorest-autorest-to)
;;         ("go-github-com-azure-go-autorest-autorest-azure-auth"
;;          ,go-github-com-azure-go-autorest-autorest-azure-auth)
;;         ("go-github-com-azure-go-autorest-autorest"
;;          ,go-github-com-azure-go-autorest-autorest)
;;         ("go-github-com-azure-azure-sdk-for-go"
;;          ,go-github-com-azure-azure-sdk-for-go)))
;;     (home-page "https://github.com/coredns/coredns")
;;     (synopsis "Compilation from Source")
;;     (description
;;       "CoreDNS is a DNS server/forwarder, written in Go, that chains @url{https://coredns.io/plugins,plugins}.
;; Each plugin performs a (DNS) function.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-coreos-go-oidc
;;   (package
;;     (name "go-github-com-coreos-go-oidc")
;;     (version "2.2.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/coreos/go-oidc")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11m6slbpi33ynffml7812piq4anhjlf1qszjlsf26f5y7x3qh8n5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/coreos/go-oidc"))
;;     (home-page "https://github.com/coreos/go-oidc")
;;     (synopsis "go-oidc")
;;     (description
;;       "Package oidc implements OpenID Connect client logic for the golang.org/x/oauth2 package.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-elazarl-go-bindata-assetfs
;;   (package
;;     (name "go-github-com-elazarl-go-bindata-assetfs")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/elazarl/go-bindata-assetfs")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05j8gy417gcildmxa04m8ylriaakadr7zvwn2ggq56pdg7b63knc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/elazarl/go-bindata-assetfs"))
;;     (home-page "https://github.com/elazarl/go-bindata-assetfs")
;;     (synopsis "go-bindata-assetfs")
;;     (description
;;       "assetfs allows packages to serve static content embedded
;; with the go-bindata tool with the standard net/http package.
;; ")
;;     (license license:bsd-2)))

;; (define-public go-github-com-chzyer-logex
;;   (package
;;     (name "go-github-com-chzyer-logex")
;;     (version "1.1.10")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/chzyer/logex")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "08pbjj3wx9acavlwyr055isa8a5hnmllgdv5k6ra60l5y1brmlq4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/chzyer/logex"))
;;     (home-page "https://github.com/chzyer/logex")
;;     (synopsis #f)
;;     (description #f)
;;     (license #f)))

;; (define-public go-github-com-chzyer-readline
;;   (package
;;     (name "go-github-com-chzyer-readline")
;;     (version "0.0.0-20180603132655-2972be24d48e")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/chzyer/readline")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "104q8dazj8yf6b089jjr82fy9h1g80zyyzvp3g8b44a7d8ngjj6r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/chzyer/readline"))
;;     (home-page "https://github.com/chzyer/readline")
;;     (synopsis "Guide")
;;     (description
;;       "Readline is a pure go implementation for GNU-Readline kind library.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-chzyer-test
;;   (package
;;     (name "go-github-com-chzyer-test")
;;     (version "0.0.0-20210722231415-061457976a23")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/chzyer/test")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jjskijacwzz0qxzrbwsglpg5vil7v4xaq8l40r2fhd2icl9hz7a"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/chzyer/test"))
;;     (home-page "https://github.com/chzyer/test")
;;     (synopsis "test")
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-ianlancetaylor-demangle
;;   (package
;;     (name "go-github-com-ianlancetaylor-demangle")
;;     (version "0.0.0-20210905161508-09a460cdf81d")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ianlancetaylor/demangle")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05qsmnv4vjy5xz916955frhna8jfg87mmqpznmygkd7qlh9gvki9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ianlancetaylor/demangle"))
;;     (home-page "https://github.com/ianlancetaylor/demangle")
;;     (synopsis "github.com/ianlancetaylor/demangle")
;;     (description
;;       "Package demangle defines functions that demangle GCC/LLVM
;; C++ and Rust symbol names.
;; This package recognizes names that were mangled according to the C++ ABI
;; defined at @url{http://codesourcery.com/cxx-abi/,http://codesourcery.com/cxx-abi/} and the Rust ABI
;; defined at
;; @url{https://rust-lang.github.io/rfcs/2603-rust-symbol-name-mangling-v0.html,https://rust-lang.github.io/rfcs/2603-rust-symbol-name-mangling-v0.html}
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-google-pprof
;;   (package
;;     (name "go-github-com-google-pprof")
;;     (version "0.0.0-20211108044417-e9b028704de0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/pprof")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11kzci1hnp2rlknyf6629hm3vnhhprw5nwff0w41mq6xzwd1y5f6"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/pprof"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-ianlancetaylor-demangle"
;;          ,go-github-com-ianlancetaylor-demangle)
;;         ("go-github-com-chzyer-test" ,go-github-com-chzyer-test)
;;         ("go-github-com-chzyer-readline" ,go-github-com-chzyer-readline)
;;         ("go-github-com-chzyer-logex" ,go-github-com-chzyer-logex)))
;;     (home-page "https://github.com/google/pprof")
;;     (synopsis "Introduction")
;;     (description
;;       "pprof is a tool for collection, manipulation and visualization
;; of performance profiles.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-armon-go-proxyproto
;;   (package
;;     (name "go-github-com-armon-go-proxyproto")
;;     (version "0.0.0-20210323213023-7e956b284f0a")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/armon/go-proxyproto")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0f98id3cl76l5v747slfqjq8264pa8kwpnj0impb2s0zgm34x1l5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/armon/go-proxyproto"))
;;     (home-page "https://github.com/armon/go-proxyproto")
;;     (synopsis "proxyproto")
;;     (description
;;       "This library provides the @code{proxyproto} package which can be used for servers
;; listening behind HAProxy of Amazon ELB load balancers.  Those load balancers
;; support the use of a proxy protocol (@url{http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt),,http://haproxy.1wt.eu/download/1.5/doc/proxy-protocol.txt),}
;; which provides a simple mechansim for the server to get the address of the client
;; instead of the load balancer.")
;;     (license license:expat)))

;; (define-public go-github-com-google-tcpproxy
;;   (package
;;     (name "go-github-com-google-tcpproxy")
;;     (version "0.0.0-20210824174053-2e577fef49e2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/inetaf/tcpproxy")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1cvp2a6zkz2nhpmbi6pvrl1zxdnkgx3yb92xfy8w0yaifn139gi1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/tcpproxy"))
;;     (propagated-inputs
;;       `(("go-github-com-armon-go-proxyproto"
;;          ,go-github-com-armon-go-proxyproto)))
;;     (home-page "https://github.com/google/tcpproxy")
;;     (synopsis "tcpproxy")
;;     (description
;;       "Package tcpproxy lets users build TCP proxies, optionally making
;; routing decisions based on HTTP/1 Host headers and the SNI hostname
;; in TLS connections.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-go-checkpoint
;;   (package
;;     (name "go-github-com-hashicorp-go-checkpoint")
;;     (version "0.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-checkpoint")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1g20nkcypl31hvhz3khznqp5xzdg8z4rcin00wvq6kqn5acvm5s1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-checkpoint"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)))
;;     (home-page "https://github.com/hashicorp/go-checkpoint")
;;     (synopsis "Go Checkpoint Client")
;;     (description
;;       "@url{http://checkpoint.hashicorp.com,Checkpoint} is an internal service at
;; Hashicorp that we use to check version information, broadcast security
;; bulletins, etc.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-secure-stdlib-parseutil
;;   (package
;;     (name "go-github-com-hashicorp-go-secure-stdlib-parseutil")
;;     (version "0.0.7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-secure-stdlib")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13sx83m52bazl46x0siyfj59zj52ridb37w55z14pm7vmi1mm899"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/hashicorp/go-secure-stdlib/parseutil"
;;        #:unpack-path "github.com/hashicorp/go-secure-stdlib"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)))
;;     (home-page "https://github.com/hashicorp/go-checkpoint")
;;     (synopsis "Go Checkpoint Client")
;;     (description
;;       "@url{http://checkpoint.hashicorp.com,Checkpoint} is an internal service at
;; Hashicorp that we use to check version information, broadcast security
;; bulletins, etc.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-connlimit
;;   (package
;;     (name "go-github-com-hashicorp-go-connlimit")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-connlimit")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "077b28rr065m5qmmv09jzxml89hk8qh2s5cnrxsqkr61qa1hlv01"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-connlimit"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/hashicorp/go-connlimit")
;;     (synopsis "Go Server Client Connection Tracking")
;;     (description
;;       "This package provides a library for network servers to track how many
;; concurrent connections they have from a given client address.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-azure-azure-sdk-for-go
;;   (package
;;     (name "go-github-com-azure-azure-sdk-for-go")
;;     (version "59.3.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/azure-sdk-for-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18bl74nqaarnifziwvi89cxb85yb335xk0xln1ziqbidgj5qcqrf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Azure/azure-sdk-for-go"))
;;     (home-page "https://github.com/Azure/azure-sdk-for-go")
;;     (synopsis "Azure SDK for Go")
;;     (description
;;       "Package sdk provides Go packages for managing and using Azure services.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-denverdino-aliyungo
;;   (package
;;     (name "go-github-com-denverdino-aliyungo")
;;     (version "0.0.0-20211109120837-897789c06302")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/denverdino/aliyungo")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1d1kdzws96krrydcrhwak68l0lzzvypdny0n030ppqfa4n8rhr30"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/denverdino/aliyungo"))
;;     (home-page "https://github.com/denverdino/aliyungo")
;;     (synopsis "AliyunGo: Go SDK for Aliyun Services")
;;     (description
;;       "This is an unofficial Go SDK for Aliyun services.  You are welcome for contribution.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-digitalocean-godo
;;   (package
;;     (name "go-github-com-digitalocean-godo")
;;     (version "1.71.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/digitalocean/godo")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07ad8i5sa78rpj4z1dxq9mpgv99fhx2kz1zw1l48zx7f405nsrpk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/digitalocean/godo"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-querystring"
;;          ,go-github-com-google-go-querystring)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/digitalocean/godo")
;;     (synopsis "Godo")
;;     (description "Package godo is the DigitalOcean API v2 client for Go.
;; ")
;;     (license license:zlib))) ;; actually MIT

;; (define-public go-github-com-gophercloud-gophercloud
;;   (package
;;     (name "go-github-com-gophercloud-gophercloud")
;;     (version "0.23.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gophercloud/gophercloud")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gzrsakmi91icbjqga2x02lqiip2l05kfqc5ixiajc52fjrl6156"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gophercloud/gophercloud"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-term" ,go-golang-org-x-term)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/gophercloud/gophercloud")
;;     (synopsis "Gophercloud: an OpenStack SDK for Go")
;;     (description
;;       "Package gophercloud provides a multi-vendor interface to OpenStack-compatible
;; clouds.  The library has a three-level hierarchy: providers, services, and
;; resources.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-vic
;;   (package
;;     (name "go-github-com-hashicorp-vic")
;;     (version "1.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/vic")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zhj3bcy8qhyagffxx9aj9c566b9qamckdc8kzrgl91p380kdih1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/vic"))
;;     (home-page "https://github.com/hashicorp/vic")
;;     (synopsis "vSphere Integrated Containers Engine")
;;     (description
;;       "vSphere Integrated Containers Engine (VIC Engine) is a container runtime for vSphere, allowing developers familiar with Docker to develop in containers and deploy them alongside traditional VM-based workloads on vSphere clusters, and allowing for these workloads to be managed through the vSphere UI in a way familiar to existing vSphere admins.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-go-resty-resty-v2
;;   (package
;;     (name "go-github-com-go-resty-resty-v2")
;;     (version "2.7.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-resty/resty")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ac293jsh71qg9sdxf6sizcakrmza0qabrw6x7mpsia2h8pxlf5x"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-resty/resty/v2"))
;;     (propagated-inputs `(("go-golang-org-x-net" ,go-golang-org-x-net)))
;;     (home-page "https://github.com/go-resty/resty")
;;     (synopsis "News")
;;     (description
;;       "Package resty provides Simple HTTP and REST client library for Go.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-linode-linodego
;;   (package
;;     (name "go-github-com-linode-linodego")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/linode/linodego")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0wfyc6dqfbwijacj4sffjcdhj8szb16jnl37p770jzlczq6b3rsm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/linode/linodego"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-go-resty-resty-v2" ,go-github-com-go-resty-resty-v2)))
;;     (home-page "https://github.com/linode/linodego")
;;     (synopsis "linodego")
;;     (description
;;       "Go client for @url{https://developers.linode.com/api/v4,Linode REST v4 API}")
;;     (license license:expat)))

;; (define-public go-github-com-nicolai86-scaleway-sdk
;;   (package
;;     (name "go-github-com-nicolai86-scaleway-sdk")
;;     (version "1.11.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nicolai86/scaleway-sdk")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1dxmywvb5w7mkffpbl9bhkkjlb9g7p9wl6k8hnhjpdm8jijka9m4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nicolai86/scaleway-sdk"))
;;     (home-page "https://github.com/nicolai86/scaleway-sdk")
;;     (synopsis "Scaleway CLI")
;;     (description "Interact with Scaleway API from the command line.")
;;     (license license:expat)))

;; (define-public go-github-com-modocache-gover
;;   (package
;;     (name "go-github-com-modocache-gover")
;;     (version "0.0.0-20171022184752-b58185e213c5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sozorogami/gover")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1w7pzqh8ljacpxhwq9f4s4ax908dgl22qfxyrx51mblylwzvm6va"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/modocache/gover"))
;;     (home-page "https://github.com/modocache/gover")
;;     (synopsis "gover")
;;     (description "Usage: gover [root] [out]
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-dnaeon-go-vcr
;;   (package
;;     (name "go-github-com-dnaeon-go-vcr")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dnaeon/go-vcr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1aw8s3aljhw9vpzcf8m64r5yv5g0j09dky30shzxvpjwpl5yxhir"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dnaeon/go-vcr"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-modocache-gover" ,go-github-com-modocache-gover)))
;;     (home-page "https://github.com/dnaeon/go-vcr")
;;     (synopsis "go-vcr")
;;     (description
;;       "@code{go-vcr} simplifies testing by recording your HTTP interactions and
;; replaying them in future runs in order to provide fast, deterministic
;; and accurate testing of your code.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-packethost-packngo
;;   (package
;;     (name "go-github-com-packethost-packngo")
;;     (version "0.19.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/packethost/packngo")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0n5kz4b9iz7fbqqhvr4f069niljiii4v8la2qk1p9l0h1scpgjb2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/packethost/packngo"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-dnaeon-go-vcr" ,go-github-com-dnaeon-go-vcr)))
;;     (home-page "https://github.com/packethost/packngo")
;;     (synopsis "packngo")
;;     (description
;;       "Package packngo implements the Equinix Metal API
;; documented at @url{https://metal.equinix.com/developers/api,https://metal.equinix.com/developers/api}.
;; ")
;;     (license license:zlib)))

;; (define-public go-github-com-renier-xmlrpc
;;   (package
;;     (name "go-github-com-renier-xmlrpc")
;;     (version "0.0.0-20191022213033-ce560eccbd00")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/renier/xmlrpc")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ls2xvnfababpf89jzl97hjfzscjjdm6jkz8wa6ialfb6nkmb320"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/renier/xmlrpc"))
;;     (home-page "https://github.com/renier/xmlrpc")
;;     (synopsis "Overview")
;;     (description
;;       "xmlrpc is an implementation of client side part of XMLRPC protocol in Go language.")
;;     (license license:expat)))

;; (define-public go-github-com-jarcoal-httpmock
;;   (package
;;     (name "go-github-com-jarcoal-httpmock")
;;     (version "1.0.8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jarcoal/httpmock")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0smyci222rff5nj7knjcavp74y67k29j74d2xfnpxnybv5l8zw5r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jarcoal/httpmock"))
;;     (home-page "https://github.com/jarcoal/httpmock")
;;     (synopsis "httpmock")
;;     (description
;;       "Package httpmock provides tools for mocking HTTP responses.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-softlayer-xmlrpc
;;   (package
;;     (name "go-github-com-softlayer-xmlrpc")
;;     (version "0.0.0-20200409220501-5f089df7cb7e")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/softlayer/xmlrpc")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nmdy7zs23r76z9b9m7raajsp9p3dai0wf7jacbnxb8yccc352wq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/softlayer/xmlrpc"))
;;     (home-page "https://github.com/softlayer/xmlrpc")
;;     (synopsis "Overview")
;;     (description
;;       "xmlrpc is an implementation of client side part of XMLRPC protocol in Go language.  This project was forked from @url{https://github.com/kolo/xmlrpc,https://github.com/kolo/xmlrpc} and contains a few minor changes to help interact with the @url{https://sldn.softlayer.com,SoftLayer API}")
;;     (license license:expat)))

;; (define-public go-github-com-softlayer-softlayer-go
;;   (package
;;     (name "go-github-com-softlayer-softlayer-go")
;;     (version "1.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/softlayer/softlayer-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nfccm2w903qax3xddys0nb2d7y92l9hj8q9kp8a6nhczw98aabs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/softlayer/softlayer-go"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-softlayer-xmlrpc" ,go-github-com-softlayer-xmlrpc)
;;         ("go-github-com-jarcoal-httpmock" ,go-github-com-jarcoal-httpmock)))
;;     (home-page "https://github.com/softlayer/softlayer-go")
;;     (synopsis "softlayer-go")
;;     (description
;;       "The Official and Complete SoftLayer API Client for Golang (the Go programming language).")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aa
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aa")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/aa"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aai
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aai")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/aai"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-advisor
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-advisor")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/advisor"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-af
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-af")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/af"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-afc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-afc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/afc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ame
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ame")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ame"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ams"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-antiddos
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-antiddos")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/antiddos"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apcas
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apcas")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/apcas"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ape
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ape")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ape"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-api
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-api")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/api"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apigateway
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apigateway")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/apigateway"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-as
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-as")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/as"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asr
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asr")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/asr"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asw
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asw")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/asw"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ba
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ba")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ba"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-batch
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-batch")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/batch"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bda
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bda")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bda"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-billing
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-billing")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/billing"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bizlive
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bizlive")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bizlive"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmeip
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmeip")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bmeip"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmlb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmlb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bmlb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmvpc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmvpc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bmvpc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bri
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bri")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/bri"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/btoe"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cam
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cam")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cam"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-captcha
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-captcha")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/captcha"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cat
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cat")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cat"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cbs
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cbs")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cbs"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ccc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ccc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ccc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cdb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdn
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdn")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cdn"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cds
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cds")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cds"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfs
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfs")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cfs"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfw
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfw")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cfw"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/chdfs"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cii"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cim
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cim")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cim"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cis
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cis")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cis"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ckafka
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ckafka")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ckafka"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-clb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-clb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/clb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudaudit
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudaudit")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cloudaudit"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudhsm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudhsm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cloudhsm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cls
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cls")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cls"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cme
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cme")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cme"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cmq
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cmq")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cmq"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cpdp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cpdp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cpdp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cr
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cr")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cr"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cvm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cvm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cvm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cwp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cwp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cwp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cws
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cws")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cws"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cynosdb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cynosdb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/cynosdb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dayu
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dayu")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dayu"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dbbrain"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dcdb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dcdb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dcdb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dlc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dlc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dlc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dnspod"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-domain
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-domain")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/domain"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-drm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-drm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/drm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ds
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ds")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ds"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dtf
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dtf")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dtf"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dts
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dts")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dts"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ecc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecdn
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecdn")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ecdn"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ecm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eiam
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eiam")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/eiam"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/eis"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-emr
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-emr")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/emr"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-es
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-es")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/es"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/essbasic"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-facefusion
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-facefusion")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/facefusion"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-faceid
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-faceid")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/faceid"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-fmu
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-fmu")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/fmu"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ft
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ft")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ft"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gaap
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gaap")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/gaap"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gme
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gme")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/gme"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gpm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gpm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/gpm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gs
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gs")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/gs"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gse
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gse")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/gse"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-habo
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-habo")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/habo"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-hcm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-hcm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/hcm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iai"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ic
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ic")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ic"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ie
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ie")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ie"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iir
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iir")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iir"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ims"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iot
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iot")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iot"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iotcloud"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotexplorer
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotexplorer")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iotexplorer"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iottid
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iottid")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iottid"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iotvideo"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideoindustry
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideoindustry")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/iotvideoindustry"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-kms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-kms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/kms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lighthouse
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lighthouse")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/lighthouse"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-live
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-live")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/live"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/lp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mariadb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mariadb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mariadb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-market
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-market")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/market"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-memcached
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-memcached")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/memcached"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mgobe"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mna
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mna")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mna"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mongodb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-monitor
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-monitor")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/monitor"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mps
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mps")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mps"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mrs
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mrs")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mrs"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-msp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-msp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/msp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mvj
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mvj")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/mvj"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-nlp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-nlp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/nlp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-npp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-npp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/npp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-oceanus
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-oceanus")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/oceanus"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ocr
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ocr")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ocr"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/organization"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-partners
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-partners")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/partners"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-pds
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-pds")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/pds"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-postgres
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-postgres")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/postgres"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-privatedns
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-privatedns")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/privatedns"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rce
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rce")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/rce"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-redis
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-redis")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/redis"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rkp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rkp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/rkp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/rp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rum
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rum")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/rum"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-scf
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-scf")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/scf"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ses
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ses")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ses"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-smpn
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-smpn")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/smpn"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/sms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-soe
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-soe")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/soe"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-solar
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-solar")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/solar"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sqlserver
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sqlserver")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/sqlserver"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssa
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssa")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ssa"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssl
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssl")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ssl"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sslpod
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sslpod")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/sslpod"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ssm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sts
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sts")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/sts"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-taf
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-taf")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/taf"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tag"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tat
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tat")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tat"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tav
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tav")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tav"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbaas
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbaas")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tbaas"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tbm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tbp"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcaplusdb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcaplusdb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tcaplusdb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcb
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcb")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tcb"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcex
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcex")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tcex"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tci
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tci")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tci"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tcm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcr
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcr")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tcr"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdid
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdid")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tdid"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdmq
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdmq")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tdmq"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tem"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tia
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tia")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tia"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tic
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tic")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tic"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ticm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ticm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ticm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tics
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tics")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tics"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiems
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiems")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tiems"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiia
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiia")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tiia"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tione
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tione")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tione"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiw
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiw")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tiw"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tke
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tke")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tke"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tkgdq
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tkgdq")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tkgdq"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tmt
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tmt")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tmt"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-trtc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-trtc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/trtc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tse
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tse")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tse"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsf
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsf")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tsf"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tsw"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tts
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tts")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/tts"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ump
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ump")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/ump"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/vm"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vms
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vms")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/vms"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vod
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vod")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/vod"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vpc
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vpc")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/vpc"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-waf
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-waf")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/waf"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wav
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wav")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/wav"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wss
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wss")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/wss"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-youmall
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-youmall")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/youmall"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunjing
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunjing")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/yunjing"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/yunsou"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-zj
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-zj")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/zj"
;;         #:unpack-path
;;         "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis #f)
;;     (description "Package doc
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tencentcloud-tencentcloud-sdk-go
;;   (package
;;     (name "go-github-com-tencentcloud-tencentcloud-sdk-go")
;;     (version "1.0.294")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/TencentCloud/tencentcloud-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zb4998xwk8zypwjizrpdf6303yyw2px2d02y08q8h9rs2q1i49d"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tencentcloud/tencentcloud-sdk-go"))
;;     (propagated-inputs
;;       `(("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-zj"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-zj)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunsou)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunjing"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-yunjing)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-youmall"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-youmall)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wss"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wss)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wav"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-wav)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-waf"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-waf)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vpc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vpc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vod"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vod)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-vm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ump"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ump)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tts"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tts)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsw)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsf"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tsf)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tse"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tse)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-trtc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-trtc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tmt"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tmt)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tkgdq"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tkgdq)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tke"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tke)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiw"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiw)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tione"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tione)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiia"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiia)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiems"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tiems)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tics"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tics)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ticm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ticm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tic"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tic)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tia"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tia)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tem)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdmq"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdmq)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdid"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tdid)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcr"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcr)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tci"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tci)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcex"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcex)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcaplusdb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tcaplusdb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbaas"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tbaas)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tav"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tav)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tat"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tat)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-tag)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-taf"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-taf)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sts"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sts)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sslpod"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sslpod)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssl"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssl)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssa"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ssa)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sqlserver"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sqlserver)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-solar"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-solar)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-soe"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-soe)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-sms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-smpn"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-smpn)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ses"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ses)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-scf"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-scf)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rum"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rum)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rkp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rkp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-redis"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-redis)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rce"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-rce)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-privatedns"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-privatedns)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-postgres"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-postgres)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-pds"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-pds)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-partners"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-partners)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-organization)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ocr"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ocr)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-oceanus"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-oceanus)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-npp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-npp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-nlp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-nlp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mvj"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mvj)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-msp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-msp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mrs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mrs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mps"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mps)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-monitor"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-monitor)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mongodb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mna"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mna)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mgobe)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-memcached"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-memcached)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-market"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-market)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mariadb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-mariadb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-live"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-live)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lighthouse"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-lighthouse)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-kms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-kms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideoindustry"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideoindustry)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotvideo)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iottid"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iottid)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotexplorer"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotexplorer)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iotcloud)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iot"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iot)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ims)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iir"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iir)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ie"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ie)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ic"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ic)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-iai)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-hcm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-hcm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-habo"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-habo)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gse"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gse)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gpm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gpm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gme"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gme)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gaap"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-gaap)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ft"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ft)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-fmu"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-fmu)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-faceid"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-faceid)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-facefusion"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-facefusion)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-essbasic)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-es"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-es)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-emr"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-emr)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eis)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eiam"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-eiam)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecdn"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecdn)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ecc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dts"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dts)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dtf"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dtf)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ds"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ds)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-drm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-drm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-domain"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-domain)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dnspod)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dlc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dlc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dcdb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dcdb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dbbrain)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dayu"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-dayu)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cynosdb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cynosdb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cws"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cws)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cwp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cwp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cvm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cvm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cr"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cr)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cpdp"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cpdp)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cms"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cms)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cmq"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cmq)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cme"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cme)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cls"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cls)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudhsm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudhsm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudaudit"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cloudaudit)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-clb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-clb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ckafka"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ckafka)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cis"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cis)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cim"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cim)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cii)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-chdfs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfw"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfw)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cfs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cds"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cds)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdn"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdn)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cdb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ccc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ccc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cbs"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cbs)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cat"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cat)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-captcha"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-captcha)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cam"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-cam)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-btoe)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bri"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bri)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmvpc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmvpc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmlb"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmlb)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmeip"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bmeip)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bm"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bm)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bizlive"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bizlive)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-billing"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-billing)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bda"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-bda)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-batch"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-batch)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ba"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ba)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asw"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asw)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asr"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-asr)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-as"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-as)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apigateway"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apigateway)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-api"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-api)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ape"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ape)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apcas"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-apcas)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-antiddos"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-antiddos)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ams)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ame"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-ame)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-afc"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-afc)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-af"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-af)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-advisor"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-advisor)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aai"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aai)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aa"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-aa)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go-tencentcloud-common)))
;;     (home-page "https://github.com/tencentcloud/tencentcloud-sdk-go")
;;     (synopsis "ç®\x80ä»\x8b")
;;     (description
;;       "Package doc
;; go get -u github.com/tencentcloud/tencentcloud-sdk-go
;; package github.com/tencentcloud/tencentcloud-sdk-go: no Go files in /Users/xxx/go/src/github.com/tencentcloud/tencentcloud-sdk-go
;; FIXME: this is a workaround for above go get issue, a fake file does nothing but claims we are a go project.
;; Eventually we need something useful here, such as real documentation, version and etc.
;; To get the package of all products at once, the package of each product is added in the imports code as side-effects.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-a8m-tree
;;   (package
;;     (name "go-github-com-a8m-tree")
;;     (version "0.0.0-20210414114729-ce3525c5c2ef")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/a8m/tree")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1skifwfxgmz0sjcakgbxvbadir30y6as3bmif2n8s306mjjwrx7d"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/a8m/tree"))
;;     (home-page "https://github.com/a8m/tree")
;;     (synopsis "tree")
;;     (description
;;       "You can take a look on @url{https://github.com/a8m/tree/raw/master/cmd/tree/tree.go,(code cmd/tree)}, and @url{http://github.com/a8m/s3tree,s3tree} or see the example below.")
;;     (license license:expat)))

;; (define-public go-github-com-vmware-vmw-guestinfo
;;   (package
;;     (name "go-github-com-vmware-vmw-guestinfo")
;;     (version "0.0.0-20211006225857-cc1fd90d572c")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/vmware/vmw-guestinfo")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1gh8fqzz0f7133i4l94l3dppa6fm0w9553m515gr314d9h30yrjc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/vmware/vmw-guestinfo"))
;;     (home-page "https://github.com/vmware/vmw-guestinfo")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:asl2.0)))

;; (define-public go-github-com-rasky-go-xdr
;;   (package
;;     (name "go-github-com-rasky-go-xdr")
;;     (version "0.0.0-20170124162913-1a41d1a06c93")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rasky/go-xdr")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0f69yfdvgwyqrj6l0zdbdb78fi6iwkqh4v6rr5ns4v63kxvnfs9s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rasky/go-xdr"))
;;     (home-page "https://github.com/rasky/go-xdr")
;;     (synopsis "go-xdr")
;;     (description
;;       "[]
;; (@url{https://travis-ci.org/davecgh/go-xdr,https://travis-ci.org/davecgh/go-xdr}) [![Coverage Status]
;; (https://coveralls.io/repos/davecgh/go-xdr/badge.png?branch=master)]
;; (@url{https://coveralls.io/r/davecgh/go-xdr?branch=master,https://coveralls.io/r/davecgh/go-xdr?branch=master})")
;;     (license license:isc)))

;; (define-public go-github-com-vmware-govmomi
;;   (package
;;     (name "go-github-com-vmware-govmomi")
;;     (version "0.27.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/vmware/govmomi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "15w2jbpilhk88rhsanq1hw19qvs66bcrv21v8hkmzsd1579p2qhy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/vmware/govmomi"))
;;     (propagated-inputs
;;       `(("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-rasky-go-xdr" ,go-github-com-rasky-go-xdr)
;;         ("go-github-com-vmware-vmw-guestinfo"
;;          ,go-github-com-vmware-vmw-guestinfo)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-a8m-tree" ,go-github-com-a8m-tree)))
;;     (home-page "https://github.com/vmware/govmomi")
;;     (synopsis "govmomi")
;;     (description "This package is the root package of the govmomi library.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-gopkg-in-airbrake-gobrake-v2
;;   (package
;;     (name "go-gopkg-in-airbrake-gobrake-v2")
;;     (version "2.0.9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/airbrake/gobrake.v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1x06f7n7qlyzqgyz0sdfcidf3w4ldn6zs6qx2mhibggk2z4whcjw"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/airbrake/gobrake.v2"
;;         #:unpack-path
;;         "gopkg.in/airbrake/gobrake.v2"))
;;     (home-page "https://gopkg.in/airbrake/gobrake.v2")
;;     (synopsis "Airbrake Golang Notifier")
;;     (description
;;       "You can use @url{https://github.com/airbrake/glog,glog fork} to send your logs to Airbrake.")
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-gemnasium-logrus-airbrake-hook-v2
;;   (package
;;     (name "go-gopkg-in-gemnasium-logrus-airbrake-hook-v2")
;;     (version "2.1.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/gemnasium/logrus-airbrake-hook.v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0sbg0dn6cysmf8f2bi209jwl4jnpiwp4rdghnxlzirw3c32ms5y5"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/gemnasium/logrus-airbrake-hook.v2"
;;         #:unpack-path
;;         "gopkg.in/gemnasium/logrus-airbrake-hook.v2"))
;;     (home-page "https://gopkg.in/gemnasium/logrus-airbrake-hook.v2")
;;     (synopsis "Airbrake Hook for Logrus")
;;     (description
;;       "Use this hook to send your errors to @url{https://airbrake.io/,Airbrake}.
;; This hook is using the @url{https://github.com/airbrake/gobrake,official airbrake go package}, and will hit the api V3.
;; The hook is synchronous and will send the error for @code{log.Error}, @code{log.Fatal} and @code{log.Panic} levels.")
;;     (license license:expat)))

;; (define-public go-gopkg-in-resty-v1
;;   (package
;;     (name "go-gopkg-in-resty-v1")
;;     (version "1.12.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/resty.v1")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "062mn735rqzhha5ag07z4gz08hxzrfm2yx067jfmaaxmb6797lmp"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "gopkg.in/resty.v1" #:unpack-path "gopkg.in/resty.v1"))
;;     (propagated-inputs `(("go-golang-org-x-net" ,go-golang-org-x-net)))
;;     (home-page "https://gopkg.in/resty.v1")
;;     (synopsis "News")
;;     (description
;;       "Package resty provides Simple HTTP and REST client library for Go.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-go-discover
;;   (package
;;     (name "go-github-com-hashicorp-go-discover")
;;     (version "0.0.0-20210818145131-c573d69da192")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-discover")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1lbi5bbvzyj9j3wjxrmhdn4zh2ly2az1vlsmj7vpx8z2bxzby1kr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-discover"))
;;     (propagated-inputs
;;       `(("go-k8s-io-client-go" ,go-k8s-io-client-go)
;;         ("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-k8s-io-api" ,go-k8s-io-api)
;;         ("go-gopkg-in-resty-v1" ,go-gopkg-in-resty-v1)
;;         ("go-gopkg-in-gemnasium-logrus-airbrake-hook-v2"
;;          ,go-gopkg-in-gemnasium-logrus-airbrake-hook-v2)
;;         ("go-gopkg-in-airbrake-gobrake-v2" ,go-gopkg-in-airbrake-gobrake-v2)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-github-com-vmware-govmomi" ,go-github-com-vmware-govmomi)
;;         ("go-github-com-tencentcloud-tencentcloud-sdk-go"
;;          ,go-github-com-tencentcloud-tencentcloud-sdk-go)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-softlayer-softlayer-go"
;;          ,go-github-com-softlayer-softlayer-go)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-sean--seed" ,go-github-com-sean--seed)
;;         ("go-github-com-renier-xmlrpc" ,go-github-com-renier-xmlrpc)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-packethost-packngo" ,go-github-com-packethost-packngo)
;;         ("go-github-com-nicolai86-scaleway-sdk"
;;          ,go-github-com-nicolai86-scaleway-sdk)
;;         ("go-github-com-mitchellh-go-homedir"
;;          ,go-github-com-mitchellh-go-homedir)
;;         ("go-github-com-linode-linodego" ,go-github-com-linode-linodego)
;;         ("go-github-com-joyent-triton-go" ,go-github-com-joyent-triton-go)
;;         ("go-github-com-jarcoal-httpmock" ,go-github-com-jarcoal-httpmock)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-hashicorp-vic" ,go-github-com-hashicorp-vic)
;;         ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-gophercloud-gophercloud"
;;          ,go-github-com-gophercloud-gophercloud)
;;         ("go-github-com-googleapis-gnostic" ,go-github-com-googleapis-gnostic)
;;         ("go-github-com-google-go-querystring"
;;          ,go-github-com-google-go-querystring)
;;         ("go-github-com-dnaeon-go-vcr" ,go-github-com-dnaeon-go-vcr)
;;         ("go-github-com-digitalocean-godo" ,go-github-com-digitalocean-godo)
;;         ("go-github-com-denverdino-aliyungo"
;;          ,go-github-com-denverdino-aliyungo)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-abdullin-seq" ,go-github-com-abdullin-seq)
;;         ("go-github-com-azure-go-autorest-autorest-validation"
;;          ,go-github-com-azure-go-autorest-autorest-validation)
;;         ("go-github-com-azure-go-autorest-autorest-to"
;;          ,go-github-com-azure-go-autorest-autorest-to)
;;         ("go-github-com-azure-go-autorest-autorest-azure-auth"
;;          ,go-github-com-azure-go-autorest-autorest-azure-auth)
;;         ("go-github-com-azure-go-autorest-autorest"
;;          ,go-github-com-azure-go-autorest-autorest)
;;         ("go-github-com-azure-azure-sdk-for-go"
;;          ,go-github-com-azure-azure-sdk-for-go)))
;;     (home-page "https://github.com/hashicorp/go-discover")
;;     (synopsis "Go Discover Nodes for Cloud Providers")
;;     (description
;;       "Package discover provides functions to get metadata for different
;; cloud environments.
;; ")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-memdb
;;   (package
;;     (name "go-github-com-hashicorp-go-memdb")
;;     (version "1.3.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-memdb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1xri3yahanjm0mn85f0f8k3nsdvfzkamql0sf2rjp3qfz667vwiy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-memdb"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-immutable-radix"
;;          ,go-github-com-hashicorp-go-immutable-radix)))
;;     (home-page "https://github.com/hashicorp/go-memdb")
;;     (synopsis "go-memdb")
;;     (description
;;       "Package memdb provides an in-memory database that supports transactions
;; and MVCC.
;; ")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-raftchunking
;;   (package
;;     (name "go-github-com-hashicorp-go-raftchunking")
;;     (version "0.6.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-raftchunking")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1bbb0g761p4hsjllx9h5kp2pwx0bfqzc80057hq9ql3vzkfmvh8j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-raftchunking"))
;;     (propagated-inputs
;;       `(("go-github-com-mitchellh-copystructure"
;;          ,go-github-com-mitchellh-copystructure)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-hashicorp-raft" ,go-github-com-hashicorp-raft)
;;         ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-go-test-deep" ,go-github-com-go-test-deep)))
;;     (home-page "https://github.com/hashicorp/go-raftchunking")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-hil
;;   (package
;;     (name "go-github-com-hashicorp-hil")
;;     (version "0.0.0-20210521165536-27a72121fd40")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/hil")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "111i23ap7pvjw5w7s03pykygxh21dmh51h1wrw3500l355pxkm9n"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/hil"))
;;     (propagated-inputs
;;       `(("go-github-com-mitchellh-reflectwalk"
;;          ,go-github-com-mitchellh-reflectwalk)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)))
;;     (home-page "https://github.com/hashicorp/hil")
;;     (synopsis "HIL")
;;     (description
;;       "HIL (HashiCorp Interpolation Language) is a lightweight embedded language used
;; primarily for configuration interpolation.  The goal of HIL is to make a simple
;; language for interpolations in the various configurations of HashiCorp tools.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-net-rpc-msgpackrpc
;;   (package
;;     (name "go-github-com-hashicorp-net-rpc-msgpackrpc")
;;     (version "0.0.0-20151116020338-a14192a58a69")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/net-rpc-msgpackrpc")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0sqx6zw211fjphj1j6w7bc5191csh2jn1wkihycsd4mk5kbwvjxp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/net-rpc-msgpackrpc"))
;;     (home-page "https://github.com/hashicorp/net-rpc-msgpackrpc")
;;     (synopsis "net-rpc-msgpackrpc")
;;     (description
;;       "Package msgpackrpc implements a MessagePack-RPC ClientCodec and ServerCodec
;; for the rpc package, using the same API as the Go standard library
;; for jsonrpc.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-raft-autopilot
;;   (package
;;     (name "go-github-com-hashicorp-raft-autopilot")
;;     (version "0.1.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/raft-autopilot")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1gijqsqx4magjqr3h16qf8yk4y5dyiw7gksc53pilw0afmya11pk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/raft-autopilot"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-go-uber-org-goleak" ,go-go-uber-org-goleak)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-hashicorp-raft" ,go-github-com-hashicorp-raft)
;;         ("go-github-com-hashicorp-go-hclog"
;;          ,go-github-com-hashicorp-go-hclog)))
;;     (home-page "https://github.com/hashicorp/raft-autopilot")
;;     (synopsis "raft-autopilot")
;;     (description
;;       "This code was taken from the same implementation in a branch from Consul and then
;; had the package updated and the mutex type unexported.
;; ")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-boltdb-bolt
;;   (package
;;     (name "go-github-com-boltdb-bolt")
;;     (version "1.3.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/boltdb/bolt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z7j06lijfi4y30ggf2znak2zf2srv2m6c68ar712wd2ys44qb3r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/boltdb/bolt"))
;;     (home-page "https://github.com/boltdb/bolt")
;;     (synopsis "Bolt")
;;     (description
;;       "Package bolt implements a low-level key/value store in pure Go.  It supports
;; fully serializable transactions, ACID semantics, and lock-free MVCC with
;; multiple readers and a single writer.  Bolt can be used for projects that
;; want a simple data store without the need to add large dependencies such as
;; Postgres or MySQL.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-raft
;;   (package
;;     (name "go-github-com-hashicorp-raft")
;;     (version "1.3.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/raft")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "19a6225zirxapzj6ba040igfy1d4mkjalzva3zpl29xpmcw464m4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/raft"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)))
;;     (home-page "https://github.com/hashicorp/raft")
;;     (synopsis "raft")
;;     (description
;;       "raft is a @url{http://www.golang.org,Go} library that manages a replicated
;; log and can be used with an FSM to manage replicated state machines.  It
;; is a library for providing @url{http://en.wikipedia.org/wiki/Consensus_(computer_science),consensus}.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-raft-boltdb
;;   (package
;;     (name "go-github-com-hashicorp-raft-boltdb")
;;     (version "0.0.0-20210422161416-485fa74b0b01")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/raft-boltdb")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "19vk6nha81mxkhim9gbh0nb5q16r5s4702hkpa98i8sxfsg4ba65"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/raft-boltdb"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-raft" ,go-github-com-hashicorp-raft)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-boltdb-bolt" ,go-github-com-boltdb-bolt)))
;;     (home-page "https://github.com/hashicorp/raft-boltdb")
;;     (synopsis "raft-boltdb")
;;     (description
;;       "This repository provides the @code{raftboltdb} package.  The package exports the
;; @code{BoltStore} which is an implementation of both a @code{LogStore} and @code{StableStore}.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-cenkalti-backoff-v3
;;   (package
;;     (name "go-github-com-cenkalti-backoff-v3")
;;     (version "3.2.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cenkalti/backoff")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01h52k1sl6drabm3fgd4yy1iwbz06wcbbh16zd6v4wi7slabma9m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cenkalti/backoff/v3"))
;;     (home-page "https://github.com/cenkalti/backoff")
;;     (synopsis "Exponential Backoff")
;;     (description
;;       "Package backoff implements backoff algorithms for retrying operations.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-go-test-deep
;;   (package
;;     (name "go-github-com-go-test-deep")
;;     (version "1.0.8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-test/deep")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1mmw2w3by7y24jjpjwmf2gfl08c65jihn3si9m0sswmagmdsk8q0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-test/deep"))
;;     (home-page "https://github.com/go-test/deep")
;;     (synopsis "Deep Variable Equality for Humans")
;;     (description
;;       "Package deep provides function deep.Equal which is like reflect.DeepEqual but
;; returns a list of differences.  This is helpful when comparing complex types
;; like structures and maps.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-vault-api
;;   (package
;;     (name "go-github-com-hashicorp-vault-api")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/vault")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ayvmqg4fj9cliwbl4pb12mailq7062j3f9v8arpv6x5r4hydlpy"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/hashicorp/vault/api"
;;         #:unpack-path
;;         "github.com/hashicorp/vault"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-square-go-jose-v2" ,go-gopkg-in-square-go-jose-v2)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-hashicorp-hcl" ,go-github-com-hashicorp-hcl)
;;         ("go-github-com-hashicorp-go-secure-stdlib-parseutil"
;;          ,go-github-com-hashicorp-go-secure-stdlib-parseutil)
;;         ("go-github-com-hashicorp-go-rootcerts"
;;          ,go-github-com-hashicorp-go-rootcerts)
;;         ("go-github-com-hashicorp-go-retryablehttp"
;;          ,go-github-com-hashicorp-go-retryablehttp)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)
;;         ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)
;;         ("go-github-com-go-test-deep" ,go-github-com-go-test-deep)
;;         ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
;;         ("go-github-com-cenkalti-backoff-v3"
;;          ,go-github-com-cenkalti-backoff-v3)))
;;     (home-page "https://github.com/hashicorp/vault")
;;     (synopsis "Vault API")
;;     (description
;;       "This provides the @code{github.com/hashicorp/vault/api} package which contains code useful for interacting with a Vault server.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-yamux
;;   (package
;;     (name "go-github-com-hashicorp-yamux")
;;     (version "0.0.0-20211028200310-0bc27b27de87")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/yamux")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18bzxfgbck1289kwnz3isznl3w261xas47y4dys4vdn4vmwp82kb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/yamux"))
;;     (home-page "https://github.com/hashicorp/yamux")
;;     (synopsis "Yamux")
;;     (description
;;       "Yamux (Yet another Multiplexer) is a multiplexing library for Golang.
;; It relies on an underlying connection to provide reliability
;; and ordering, such as TCP or Unix domain sockets, and provides
;; stream-oriented multiplexing.  It is inspired by SPDY but is not
;; interoperable with it.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-abdullin-seq
;;   (package
;;     (name "go-github-com-abdullin-seq")
;;     (version "0.0.0-20160510034733-d5467c17e7af")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/abdullin/seq")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "081p00z1hkka33qk7b8dw35qw0lr956bihx5x1c9lxn7cx937ysb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/abdullin/seq"))
;;     (home-page "https://github.com/abdullin/seq")
;;     (synopsis "Story")
;;     (description "Structural equality library for Golang.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-cockroachdb-apd
;;   (package
;;     (name "go-github-com-cockroachdb-apd")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cockroachdb/apd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "14jnnqpdsa3vxh2zpznd2dpnychcrlkljppfplrigrs245slyh72"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cockroachdb/apd"))
;;     (home-page "https://github.com/cockroachdb/apd")
;;     (synopsis "apd")
;;     (description "Package apd implements arbitrary-precision decimals.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jackc-fake
;;   (package
;;     (name "go-github-com-jackc-fake")
;;     (version "0.0.0-20150926172116-812a484cc733")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jackc/fake")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0f32qgzhx7pl3s0g4v916z21kfyh5v1dv28aakxisiw23936wf68"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jackc/fake"))
;;     (home-page "https://github.com/jackc/fake")
;;     (synopsis "Fake")
;;     (description
;;       "Package fake is the fake data generatror for go (Golang), heavily inspired by forgery and ffaker Ruby gems
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-jackc-pgx
;;   (package
;;     (name "go-github-com-jackc-pgx")
;;     (version "3.6.2+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jackc/pgx")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hbnh69ss0pq83n18b62znj3qi54y9kr31a3xi9h35p27nsk3izf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jackc/pgx"))
;;     (home-page "https://github.com/jackc/pgx")
;;     (synopsis "pgx - PostgreSQL Driver and Toolkit")
;;     (description "Package pgx is a PostgreSQL database driver.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-satori-go-uuid
;;   (package
;;     (name "go-github-com-satori-go-uuid")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/satori/go.uuid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1j4s5pfg2ldm35y8ls8jah4dya2grfnx2drb4jcbjsyrp4cm5yfb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/satori/go.uuid"))
;;     (home-page "https://github.com/satori/go.uuid")
;;     (synopsis "UUID package for Go language")
;;     (description
;;       "Package uuid provides implementation of Universally Unique Identifier (UUID).
;; Supported versions are 1, 3, 4 and 5 (as specified in @url{https://rfc-editor.org/rfc/rfc4122.html,RFC 4122}) and
;; version 2 (as specified in DCE 1.1).
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-sean--conswriter
;;   (package
;;     (name "go-github-com-sean--conswriter")
;;     (version "0.0.0-20180208195008-f5ae3917a627")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sean-/conswriter")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18lyvkr7x8390skfsy8s1mpgn1qijc4paanbxd8md9lm71a1pk1m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/sean-/conswriter"))
;;     (home-page "https://github.com/sean-/conswriter")
;;     (synopsis "conswriter")
;;     (description
;;       "Console Writer is intended to be used by CLI apps as a writer for terminals and
;; automatically pipes output to a pager if desired.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-sean--pager
;;   (package
;;     (name "go-github-com-sean--pager")
;;     (version "0.0.0-20180208200047-666be9bf53b5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sean-/pager")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0dphnvizvjfsn7a7wkm0ffpa0j36lf75mh1xdh2acn0jcy727xy2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/sean-/pager"))
;;     (home-page "https://github.com/sean-/pager")
;;     (synopsis "Credit")
;;     (description
;;       "Easy @code{$PAGER} support for Go (i.e. @code{less(1)}, @code{more(1)}) with sane defaults.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-shopspring-decimal
;;   (package
;;     (name "go-github-com-shopspring-decimal")
;;     (version "1.3.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shopspring/decimal")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1w1wjv2aqyqp22s8gc2nxp8gk4h0dxvp15xsn5lblghaqjcd239h"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shopspring/decimal"))
;;     (home-page "https://github.com/shopspring/decimal")
;;     (synopsis "decimal")
;;     (description
;;       "Package decimal implements an arbitrary precision fixed-point decimal.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-joyent-triton-go
;;   (package
;;     (name "go-github-com-joyent-triton-go")
;;     (version "1.8.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/joyent/triton-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01j7bv970pli664vvp7lbv640jwh4jvsalmq7bwr43jybbabqhs3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/joyent/triton-go"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-viper" ,go-github-com-spf13-viper)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
;;         ("go-github-com-shopspring-decimal" ,go-github-com-shopspring-decimal)
;;         ("go-github-com-sean--seed" ,go-github-com-sean--seed)
;;         ("go-github-com-sean--pager" ,go-github-com-sean--pager)
;;         ("go-github-com-sean--conswriter" ,go-github-com-sean--conswriter)
;;         ("go-github-com-satori-go-uuid" ,go-github-com-satori-go-uuid)
;;         ("go-github-com-rs-zerolog" ,go-github-com-rs-zerolog)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-olekukonko-tablewriter"
;;          ,go-github-com-olekukonko-tablewriter)
;;         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-lib-pq" ,go-github-com-lib-pq)
;;         ("go-github-com-jackc-pgx" ,go-github-com-jackc-pgx)
;;         ("go-github-com-jackc-fake" ,go-github-com-jackc-fake)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
;;         ("go-github-com-cockroachdb-apd" ,go-github-com-cockroachdb-apd)
;;         ("go-github-com-abdullin-seq" ,go-github-com-abdullin-seq)))
;;     (home-page "https://github.com/joyent/triton-go")
;;     (synopsis "triton-go")
;;     (description
;;       "@code{triton-go} is a client SDK for Go applications using Joyent's Triton Compute
;; and Object Storage (Manta) APIs.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-mitchellh-go-testing-interface
;;   (package
;;     (name "go-github-com-mitchellh-go-testing-interface")
;;     (version "1.14.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mitchellh/go-testing-interface")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1xrpdficli723g74mq36r4nj04i9yfh7hacp6wai3p7mq3gs5hac"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mitchellh/go-testing-interface"))
;;     (home-page "https://github.com/mitchellh/go-testing-interface")
;;     (synopsis "go-testing-interface")
;;     (description
;;       "go-testing-interface is a Go library that exports an interface that
;; @code{*testing.T} implements as well as a runtime version you can use in its
;; place.")
;;     (license license:expat)))

;; (define-public go-github-com-mitchellh-hashstructure
;;   (package
;;     (name "go-github-com-mitchellh-hashstructure")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mitchellh/hashstructure")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0inqc2k0mkaklhf8l779r9pnl5d4chdlahkrcjbss2bcnjjdblvl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mitchellh/hashstructure"))
;;     (home-page "https://github.com/mitchellh/hashstructure")
;;     (synopsis "hashstructure")
;;     (description
;;       "hashstructure is a Go library for creating a unique hash value
;; for arbitrary values in Go.")
;;     (license license:expat)))

;; (define-public go-github-com-patrickmn-go-cache
;;   (package
;;     (name "go-github-com-patrickmn-go-cache")
;;     (version "2.1.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/patrickmn/go-cache")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10020inkzrm931r4bixf8wqr9n39wcrb78vfyxmbvjavvw4zybgs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/patrickmn/go-cache"))
;;     (home-page "https://github.com/patrickmn/go-cache")
;;     (synopsis "go-cache")
;;     (description
;;       "go-cache is an in-memory key:value store/cache similar to memcached that is
;; suitable for applications running on a single machine.  Its major advantage is
;; that, being essentially a thread-safe @code{map[string]interface{}} with expiration
;; times, it doesn't need to serialize or transmit its contents over the network.")
;;     (license license:expat)))

;; (define-public go-github-com-pquerna-cachecontrol
;;   (package
;;     (name "go-github-com-pquerna-cachecontrol")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pquerna/cachecontrol")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ds4wgk6hm1sd6037dww5zm59syzs7vrdzh9q5x78s1lfrznsi3k"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pquerna/cachecontrol"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/pquerna/cachecontrol")
;;     (synopsis "cachecontrol: HTTP Caching Parser and Interpretation")
;;     (description
;;       "Package cachecontrol implements the logic for HTTP Caching
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-rboyer-safeio
;;   (package
;;     (name "go-github-com-rboyer-safeio")
;;     (version "0.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rboyer/safeio")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0h576j3z7xhz43dvglzmhl6dl8nsnnrcly2fhxzcw73w5h3q460m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rboyer/safeio"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/rboyer/safeio")
;;     (synopsis "Safe I/O")
;;     (description
;;       "Package safeio provides functions to perform atomic, fsync-safe disk
;; operations.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-lufia-plan9stats
;;   (package
;;     (name "go-github-com-lufia-plan9stats")
;;     (version "0.0.0-20211012122336-39d0f177ccd0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/lufia/plan9stats")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0l26w68r04n8g0bha933lkxik65vw2cgyf8c6ab8gr7i82pgw5mn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/lufia/plan9stats"))
;;     (propagated-inputs
;;       `(("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/lufia/plan9stats")
;;     (synopsis "plan9stats")
;;     (description "Package stats provides statistic utilities for Plan 9.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-shirou-gopsutil-v3
;;   (package
;;     (name "go-github-com-shirou-gopsutil-v3")
;;     (version "3.21.10")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shirou/gopsutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1q50i2fvwkm1f82rx037lgcam9z8bwhilhpkz4fb3m6lz0q88gr4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shirou/gopsutil/v3"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-tklauser-go-sysconf"
;;          ,go-github-com-tklauser-go-sysconf)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-lufia-plan9stats" ,go-github-com-lufia-plan9stats)
;;         ("go-github-com-go-ole-go-ole" ,go-github-com-go-ole-go-ole)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-stackexchange-wmi" ,go-github-com-stackexchange-wmi)))
;;     (home-page "https://github.com/shirou/gopsutil")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-square-go-jose-v2
;;   (package
;;     (name "go-gopkg-in-square-go-jose-v2")
;;     (version "2.6.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/square/go-jose.v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1b1nhqxfmhzwrfk7pkvp2w3z3d0pf5ir00vizmy2d4xdbnldn70r"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/square/go-jose.v2"
;;         #:unpack-path
;;         "gopkg.in/square/go-jose.v2"))
;;     (home-page "https://gopkg.in/square/go-jose.v2")
;;     (synopsis "Go JOSE")
;;     (description
;;       "Package jose aims to provide an implementation of the Javascript Object Signing
;; and Encryption set of standards.  It implements encryption and signing based on
;; the JSON Web Encryption and JSON Web Signature standards, with optional JSON
;; Web Token support available in a sub-package.  The library supports both the
;; compact and full serialization formats, and has optional support for multiple
;; recipients.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-gregjones-httpcache
;;   (package
;;     (name "go-github-com-gregjones-httpcache")
;;     (version "0.0.0-20190611155906-901d90724c79")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gregjones/httpcache")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05r0xq51vfb55di11m7iv19341d73f7in33vq1ihcqs1nffdwiq0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gregjones/httpcache"))
;;     (home-page "https://github.com/gregjones/httpcache")
;;     (synopsis "httpcache")
;;     (description
;;       "Package httpcache provides a http.RoundTripper implementation that works as a
;; mostly RFC-compliant cache for http responses.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-peterbourgon-diskv
;;   (package
;;     (name "go-github-com-peterbourgon-diskv")
;;     (version "2.0.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/peterbourgon/diskv")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1mxpa5aad08x30qcbffzk80g9540wvbca4blc1r2qyzl65b8929b"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/peterbourgon/diskv"))
;;     (home-page "https://github.com/peterbourgon/diskv")
;;     (synopsis "What is diskv?")
;;     (description
;;       "Diskv (disk-vee) is a simple, persistent key-value store written in the Go
;; language.  It starts with an incredibly simple API for storing arbitrary data on
;; a filesystem by key, and builds several layers of performance-enhancing
;; abstraction on top.  The end result is a conceptually simple, but highly
;; performant, disk-backed storage system.")
;;     (license license:expat)))

;; (define-public go-k8s-io-api
;;   (package
;;     (name "go-k8s-io-api")
;;     (version "0.22.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/api")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1gkrzjgjrwqxi7d1zh0z0l27469zq84bxgkf7qnry20f2mkgs49j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/api"))
;;     (propagated-inputs
;;       `(("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)))
;;     (home-page "https://k8s.io/api")
;;     (synopsis "api")
;;     (description
;;       "Schema of the external API types that are served by the Kubernetes API server.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-rogpeppe-go-charset
;;   (package
;;     (name "go-github-com-rogpeppe-go-charset")
;;     (version "0.0.0-20190617161244-0dc95cdf6f31")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rogpeppe/go-charset")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0da0q9j6c98ra29i1jrlw2jdfrm046s4rs9qchh1l4jjrpq6bicr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rogpeppe/go-charset"))
;;     (home-page "https://github.com/rogpeppe/go-charset")
;;     (synopsis "THIS PACKAGE IS NO LONGER MAINTAINED.")
;;     (description
;;       "Use @url{https://godoc.org/golang.org/x/text/transform,golang.org/x/text/transform} instead.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-elazarl-goproxy-ext
;;   (package
;;     (name "go-github-com-elazarl-goproxy-ext")
;;     (version "0.0.0-20211114080932-d06c3be7c11b")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/elazarl/goproxy")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0k0f6pfis4v7jxms11ir0kp4k42q7zg7jh88k5583izrsvdvdwi1"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/elazarl/goproxy/ext"
;;         #:unpack-path
;;         "github.com/elazarl/goproxy"))
;;     (propagated-inputs
;;       `(("go-github-com-rogpeppe-go-charset"
;;          ,go-github-com-rogpeppe-go-charset)))
;;     (home-page "https://github.com/elazarl/goproxy")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-3)))

;; (define-public go-github-com-elazarl-goproxy
;;   (package
;;     (name "go-github-com-elazarl-goproxy")
;;     (version "0.0.0-20211114080932-d06c3be7c11b")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/elazarl/goproxy")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0k0f6pfis4v7jxms11ir0kp4k42q7zg7jh88k5583izrsvdvdwi1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/elazarl/goproxy"))
;;     (propagated-inputs
;;       `(("go-github-com-elazarl-goproxy-ext"
;;          ,go-github-com-elazarl-goproxy-ext)))
;;     (home-page "https://github.com/elazarl/goproxy")
;;     (synopsis "Introduction")
;;     (description
;;       "Taken from $GOROOT/src/pkg/net/http/chunked
;; needed to write https responses to client.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-evanphx-json-patch
;;   (package
;;     (name "go-github-com-evanphx-json-patch")
;;     (version "0.5.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/evanphx/json-patch")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00sib9ba8j1h1n3r1cxx48zn8hs6sxwnrh78p6wbs28wcpz8nqxi"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/evanphx/json-patch"))
;;     (propagated-inputs
;;       `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)))
;;     (home-page "https://github.com/evanphx/json-patch")
;;     (synopsis "JSON-Patch")
;;     (description
;;       "@code{jsonpatch} is a library which provides functionality for both applying
;; @url{http://tools.ietf.org/html/rfc6902,RFC6902 JSON patches} against documents, as
;; well as for calculating & applying @url{https://tools.ietf.org/html/rfc7396,RFC7396 JSON merge patches}.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-moby-spdystream
;;   (package
;;     (name "go-github-com-moby-spdystream")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/moby/spdystream")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1p4vk251hsv7cf86qgv1ds104cyxs6ibdxlkbcdb3ayfxqsh5n1p"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/moby/spdystream"))
;;     (propagated-inputs
;;       `(("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)))
;;     (home-page "https://github.com/moby/spdystream")
;;     (synopsis "SpdyStream")
;;     (description
;;       "This package provides a multiplexed stream library using spdy")
;;     (license license:asl2.0)))

;; (define-public go-github-com-mxk-go-flowrate
;;   (package
;;     (name "go-github-com-mxk-go-flowrate")
;;     (version "0.0.0-20140419014527-cca7078d478f")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mxk/go-flowrate")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zqs39923ja0yypdmiqk6x8pgmfs3ms5x5sl1dqv9z6zyx2xy541"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mxk/go-flowrate"))
;;     (home-page "https://github.com/mxk/go-flowrate")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-inf-v0
;;   (package
;;     (name "go-gopkg-in-inf-v0")
;;     (version "0.9.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/inf.v0")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00k5iqjcp371fllqxncv7jkf80hn1zww92zm78cclbcn4ybigkng"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "gopkg.in/inf.v0" #:unpack-path "gopkg.in/inf.v0"))
;;     (home-page "https://gopkg.in/inf.v0")
;;     (synopsis #f)
;;     (description
;;       "Package inf (type inf.Dec) implements \"infinite-precision\" decimal
;; arithmetic.
;; \"Infinite precision\" describes two characteristics: practically unlimited
;; precision for decimal number representation and no support for calculating
;; with any specific fixed precision.
;; (Although there is no practical limit on precision, inf.Dec can only
;; represent finite decimals.)
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-nytimes-gziphandler
;;   (package
;;     (name "go-github-com-nytimes-gziphandler")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nytimes/gziphandler")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rhrjlw220hnymzfccm0yir3pc9dpj7h3gwzhzq2cbsb3hhsqvyy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/NYTimes/gziphandler"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/NYTimes/gziphandler")
;;     (synopsis "Gzip Handler")
;;     (description
;;       "This is a tiny Go package which wraps HTTP handlers to transparently gzip the
;; response body, for clients which support it.  Although it's usually simpler to
;; leave that to a reverse proxy (like nginx or Varnish), this package is useful
;; when that's undesirable.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-puerkitobio-purell
;;   (package
;;     (name "go-github-com-puerkitobio-purell")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/PuerkitoBio/purell")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0c525frsxmalrn55hzzsxy17ng8avkd40ga0wxfw9haxsdjgqdqy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/PuerkitoBio/purell"))
;;     (home-page "https://github.com/PuerkitoBio/purell")
;;     (synopsis "Purell")
;;     (description
;;       "Package purell offers URL normalization as described on the wikipedia page:
;; @url{http://en.wikipedia.org/wiki/URL_normalization,http://en.wikipedia.org/wiki/URL_normalization}
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-puerkitobio-urlesc
;;   (package
;;     (name "go-github-com-puerkitobio-urlesc")
;;     (version "0.0.0-20170810143723-de5bf2ad4578")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/PuerkitoBio/urlesc")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0n0srpqwbaan1wrhh2b7ysz543pjs1xw2rghvqyffg9l0g8kzgcw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/PuerkitoBio/urlesc"))
;;     (home-page "https://github.com/PuerkitoBio/urlesc")
;;     (synopsis "urlesc")
;;     (description
;;       "Package urlesc implements query escaping as per @url{https://rfc-editor.org/rfc/rfc3986.html,RFC 3986}.
;; It contains some parts of the net/url package, modified so as to allow
;; some reserved characters incorrectly escaped by net/url.
;; See @url{https://github.com/golang/go/issues/5684,https://github.com/golang/go/issues/5684}
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-openapi-jsonreference
;;   (package
;;     (name "go-github-com-go-openapi-jsonreference")
;;     (version "0.19.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-openapi/jsonreference")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1b4xg5ghzlzd6ricc3jwmlp71hxz1mgg54mgywzzqwyzvpbwn7n9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-openapi/jsonreference"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-go-openapi-jsonpointer"
;;          ,go-github-com-go-openapi-jsonpointer)
;;         ("go-github-com-puerkitobio-urlesc" ,go-github-com-puerkitobio-urlesc)
;;         ("go-github-com-puerkitobio-purell"
;;          ,go-github-com-puerkitobio-purell)))
;;     (home-page "https://github.com/go-openapi/jsonreference")
;;     (synopsis "gojsonreference")
;;     (description
;;       "@url{https://raw.githubusercontent.com/go-openapi/jsonreference/master/LICENSE,(img (@ (src http://img.shields.io/badge/license-Apache%20v2-orange.svg) (alt license)))} @url{http://godoc.org/github.com/go-openapi/jsonreference,(img (@ (src https://godoc.org/github.com/go-openapi/jsonreference?status.svg=) (alt GoDoc)))}
;; An implementation of JSON Reference - Go language")
;;     (license license:asl2.0)))

;; (define-public go-github-com-docopt-docopt-go
;;   (package
;;     (name "go-github-com-docopt-docopt-go")
;;     (version "0.0.0-20180111231733-ee0de3bc6815")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/docopt/docopt.go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hlra7rmi5pmd7d93rv56ahiy4qkgmq8a6mz0jpadvbi5qh8lq6j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/docopt/docopt-go"))
;;     (home-page "https://github.com/docopt/docopt-go")
;;     (synopsis "docopt-go")
;;     (description
;;       "Package docopt parses command-line arguments based on a help message.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-stoewer-go-strcase
;;   (package
;;     (name "go-github-com-stoewer-go-strcase")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/stoewer/go-strcase")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1c7p6r9xr763x5alfcf6k2pd9d2phwbapq6lyc5f01a33rrh9ksm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/stoewer/go-strcase"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/stoewer/go-strcase")
;;     (synopsis "")
;;     (description
;;       "Package strcase converts between different kinds of naming formats such as camel case
;; (CamelCase), snake case (snake_case) or kebab case (kebab-case).  The package is designed
;; to work only with strings consisting of standard ASCII letters.  Unicode is currently not
;; supported.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-googleapis-gnostic
;;   (package
;;     (name "go-github-com-googleapis-gnostic")
;;     (version "0.5.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/gnostic")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ph521cz1y06xn9gyw5djg369cb414q5kbfd0yl8a55vbw7zxd89"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/googleapis/gnostic"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-stoewer-go-strcase" ,go-github-com-stoewer-go-strcase)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-docopt-docopt-go" ,go-github-com-docopt-docopt-go)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/googleapis/gnostic")
;;     (synopsis "â¨\x81 gnostic")
;;     (description
;;       "Gnostic is a tool for building better REST APIs through knowledge.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-munnerz-goautoneg
;;   (package
;;     (name "go-github-com-munnerz-goautoneg")
;;     (version "0.0.0-20191010083416-a7dc8b61c822")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/munnerz/goautoneg")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1m4v6bw6yf1g0kvpc46isjp0qfhx2y8gnvlnyjf637jy64613mgg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/munnerz/goautoneg"))
;;     (home-page "https://github.com/munnerz/goautoneg")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-3)))

;; (define-public go-k8s-io-gengo
;;   (package
;;     (name "go-k8s-io-gengo")
;;     (version "0.0.0-20211115164449-b448ea381d54")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/gengo")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nwh0bfw62igwxc6l3q04lz1wnvrkihsxqf5h5bsp2p1yb5ys4rd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/gengo"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
;;         ("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://k8s.io/gengo")
;;     (synopsis "gengo")
;;     (description
;;       "This package provides a package for generating things based on go files.  This mechanism was first used
;; in Kubernetes and is split out here for ease of reuse and maintainability.")
;;     (license license:asl2.0)))

;; (define-public go-k8s-io-klog-v2
;;   (package
;;     (name "go-k8s-io-klog-v2")
;;     (version "2.30.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/klog")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0qklj160hh94gcjvq3vbpr0xahqsk1jdkg6yjdx0i4w2ihb5mgf8"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "k8s.io/klog/v2" #:unpack-path "k8s.io/klog/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-go-logr-logr" ,go-github-com-go-logr-logr)))
;;     (home-page "https://k8s.io/klog/v2")
;;     (synopsis "klog")
;;     (description
;;       "Package klog implements logging analogous to the Google-internal C++ INFO/ERROR/V setup.
;; It provides functions Info, Warning, Error, Fatal, plus formatting variants such as
;; Infof.  It also provides V-style logging controlled by the -v and -vmodule=file=2 flags.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-k8s-io-utils
;;   (package
;;     (name "go-k8s-io-utils")
;;     (version "0.0.0-20211116205334-6203023598ed")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/utils")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0shsnwx1wh6rdpz1kzfgara228q0dbmkhvwhxsgaazhigw3nvhm2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/utils"))
;;     (propagated-inputs
;;       `(("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://k8s.io/utils")
;;     (synopsis "Utils")
;;     (description
;;       "This package provides a set of Go libraries that provide low-level, kubernetes-independent packages
;; supplementing the @url{https://golang.org/pkg/#stdlib,Go standard libs}.")
;;     (license license:asl2.0)))

;; (define-public go-k8s-io-kube-openapi
;;   (package
;;     (name "go-k8s-io-kube-openapi")
;;     (version "0.0.0-20211115234752-e816edb12b65")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/kube-openapi")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "080p0rns6l2r6b4plfg2901bpvn8ag8spmnr99lzbxhy83prsvqk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/kube-openapi"))
;;     (propagated-inputs
;;       `(("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
;;         ("go-sigs-k8s-io-structured-merge-diff-v4"
;;          ,go-sigs-k8s-io-structured-merge-diff-v4)
;;         ("go-k8s-io-utils" ,go-k8s-io-utils)
;;         ("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-k8s-io-gengo" ,go-k8s-io-gengo)
;;         ("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-munnerz-goautoneg" ,go-github-com-munnerz-goautoneg)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-googleapis-gnostic" ,go-github-com-googleapis-gnostic)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-go-openapi-swag" ,go-github-com-go-openapi-swag)
;;         ("go-github-com-go-openapi-jsonreference"
;;          ,go-github-com-go-openapi-jsonreference)
;;         ("go-github-com-getkin-kin-openapi" ,go-github-com-getkin-kin-openapi)
;;         ("go-github-com-emicklei-go-restful"
;;          ,go-github-com-emicklei-go-restful)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-asaskevich-govalidator"
;;          ,go-github-com-asaskevich-govalidator)
;;         ("go-github-com-nytimes-gziphandler"
;;          ,go-github-com-nytimes-gziphandler)))
;;     (home-page "https://k8s.io/kube-openapi")
;;     (synopsis "Kube OpenAPI")
;;     (description
;;       "This repo is the home for Kubernetes OpenAPI discovery spec generation.  The goal
;; is to support a subset of OpenAPI features to satisfy kubernetes use-cases but
;; implement that subset with little to no assumption about the structure of the
;; code or routes.  Thus, there should be no kubernetes specific code in this repo.")
;;     (license license:asl2.0)))

;; (define-public go-sigs-k8s-io-structured-merge-diff-v4
;;   (package
;;     (name "go-sigs-k8s-io-structured-merge-diff-v4")
;;     (version "4.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes-sigs/structured-merge-diff")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "110ilhk42zj6iylyfwbrffn9ly4g063k34wqbd0r8cbzgrljm9wh"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "sigs.k8s.io/structured-merge-diff/v4"
;;         #:unpack-path
;;         "sigs.k8s.io/structured-merge-diff/v4"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
;;         ("go-github-com-modern-go-concurrent"
;;          ,go-github-com-modern-go-concurrent)
;;         ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://sigs.k8s.io/structured-merge-diff/v4")
;;     (synopsis "Structured Merge and Diff")
;;     (description
;;       "This repo contains code which implements the Kubernetes \"apply\" operation.")
;;     (license license:asl2.0)))

;; (define-public go-k8s-io-apimachinery
;;   (package
;;     (name "go-k8s-io-apimachinery")
;;     (version "0.22.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/apimachinery")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rasfkd6dvz4b9l1arwcib39m6mh8zdmk3fvgz880ar6wfajmr0j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/apimachinery"))
;;     (propagated-inputs
;;       `(("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
;;         ("go-sigs-k8s-io-structured-merge-diff-v4"
;;          ,go-sigs-k8s-io-structured-merge-diff-v4)
;;         ("go-k8s-io-kube-openapi" ,go-k8s-io-kube-openapi)
;;         ("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-gopkg-in-inf-v0" ,go-gopkg-in-inf-v0)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-niemeyer-pretty" ,go-github-com-niemeyer-pretty)
;;         ("go-github-com-mxk-go-flowrate" ,go-github-com-mxk-go-flowrate)
;;         ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
;;         ("go-github-com-moby-spdystream" ,go-github-com-moby-spdystream)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
;;         ("go-github-com-googleapis-gnostic" ,go-github-com-googleapis-gnostic)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-evanphx-json-patch" ,go-github-com-evanphx-json-patch)
;;         ("go-github-com-elazarl-goproxy" ,go-github-com-elazarl-goproxy)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://k8s.io/apimachinery")
;;     (synopsis "apimachinery")
;;     (description
;;       "Scheme, typing, encoding, decoding, and conversion packages for Kubernetes and Kubernetes-like API objects.")
;;     (license license:asl2.0)))

;; (define-public go-k8s-io-client-go
;;   (package
;;     (name "go-k8s-io-client-go")
;;     (version "0.22.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes/client-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18rps382asvmyclk8zi9j8yicds3rw25qnccwx6661b1ajlrj0b7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "k8s.io/client-go"))
;;     (propagated-inputs
;;       `(("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-k8s-io-api" ,go-k8s-io-api)
;;         ("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
;;         ("go-sigs-k8s-io-structured-merge-diff-v4"
;;          ,go-sigs-k8s-io-structured-merge-diff-v4)
;;         ("go-k8s-io-utils" ,go-k8s-io-utils)
;;         ("go-k8s-io-klog-v2" ,go-k8s-io-klog-v2)
;;         ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-term" ,go-golang-org-x-term)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-peterbourgon-diskv" ,go-github-com-peterbourgon-diskv)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-gregjones-httpcache"
;;          ,go-github-com-gregjones-httpcache)
;;         ("go-github-com-googleapis-gnostic" ,go-github-com-googleapis-gnostic)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-google-btree" ,go-github-com-google-btree)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-form3tech-oss-jwt-go"
;;          ,go-github-com-form3tech-oss-jwt-go)
;;         ("go-github-com-evanphx-json-patch" ,go-github-com-evanphx-json-patch)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-azure-go-autorest-autorest-adal"
;;          ,go-github-com-azure-go-autorest-autorest-adal)
;;         ("go-github-com-azure-go-autorest-autorest"
;;          ,go-github-com-azure-go-autorest-autorest)
;;         ("go-cloud-google-com-go" ,go-cloud-google-com-go)))
;;     (home-page "https://k8s.io/client-go")
;;     (synopsis "client-go")
;;     (description
;;       "Go clients for talking to a @url{http://kubernetes.io/,kubernetes} cluster.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-go-check-check
;;   (package
;;     (name "go-github-com-go-check-check")
;;     (version "0.0.0-20201130134442-10cb98267c6c")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-check/check")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jwxndf8rsyx0fgrp47d99rp55yzssmryb92jfj3yf7zd8rjjljn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-check/check"))
;;     (propagated-inputs `(("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
;;     (home-page "https://github.com/go-check/check")
;;     (synopsis "Instructions")
;;     (description
;;       "Package check is a rich testing extension for Go's testing package.
;; ")
;;     (license license:bsd-2)))

;; (define-public go-github-com-istio-gogo-genproto
;;   (package
;;     (name "go-github-com-istio-gogo-genproto")
;;     (version "0.0.0-20211111171331-7926fce33bb3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/istio/gogo-genproto")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pr16d88hda330h8ncpdc0kv5jigrjgc8ax9y1qlia7q9byzl040"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/istio/gogo-genproto"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)))
;;     (home-page "https://github.com/istio/gogo-genproto")
;;     (synopsis "gogo-genproto")
;;     (description
;;       "These are gogoslick compiled versions of widely-used protos.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-consul
;;   (package
;;     (name "go-github-com-hashicorp-consul")
;;     (version "1.10.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/consul")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zhwaz2q0r2c9zh5qc13v805fhpixxzaiiql7y8qhx6lkl4ng9ls"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/consul"))
;;     (propagated-inputs
;;       `(("go-github-com-istio-gogo-genproto"
;;          ,go-github-com-istio-gogo-genproto)
;;         ("go-github-com-go-check-check" ,go-github-com-go-check-check)
;;         ("go-k8s-io-client-go" ,go-k8s-io-client-go)
;;         ("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-k8s-io-api" ,go-k8s-io-api)
;;         ("go-gopkg-in-square-go-jose-v2" ,go-gopkg-in-square-go-jose-v2)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-go-uber-org-goleak" ,go-go-uber-org-goleak)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-shirou-gopsutil-v3" ,go-github-com-shirou-gopsutil-v3)
;;         ("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
;;         ("go-github-com-rboyer-safeio" ,go-github-com-rboyer-safeio)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pquerna-cachecontrol"
;;          ,go-github-com-pquerna-cachecontrol)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-patrickmn-go-cache" ,go-github-com-patrickmn-go-cache)
;;         ("go-github-com-mitchellh-reflectwalk"
;;          ,go-github-com-mitchellh-reflectwalk)
;;         ("go-github-com-mitchellh-pointerstructure"
;;          ,go-github-com-mitchellh-pointerstructure)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-mitchellh-hashstructure"
;;          ,go-github-com-mitchellh-hashstructure)
;;         ("go-github-com-mitchellh-go-testing-interface"
;;          ,go-github-com-mitchellh-go-testing-interface)
;;         ("go-github-com-mitchellh-copystructure"
;;          ,go-github-com-mitchellh-copystructure)
;;         ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-konsorten-go-windows-terminal-sequences"
;;          ,go-github-com-konsorten-go-windows-terminal-sequences)
;;         ("go-github-com-joyent-triton-go" ,go-github-com-joyent-triton-go)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-hashicorp-yamux" ,go-github-com-hashicorp-yamux)
;;         ("go-github-com-hashicorp-vault-api"
;;          ,go-github-com-hashicorp-vault-api)
;;         ("go-github-com-hashicorp-serf" ,go-github-com-hashicorp-serf)
;;         ("go-github-com-hashicorp-raft-boltdb"
;;          ,go-github-com-hashicorp-raft-boltdb)
;;         ("go-github-com-hashicorp-raft-autopilot"
;;          ,go-github-com-hashicorp-raft-autopilot)
;;         ("go-github-com-hashicorp-raft" ,go-github-com-hashicorp-raft)
;;         ("go-github-com-hashicorp-net-rpc-msgpackrpc"
;;          ,go-github-com-hashicorp-net-rpc-msgpackrpc)
;;         ("go-github-com-hashicorp-memberlist"
;;          ,go-github-com-hashicorp-memberlist)
;;         ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
;;         ("go-github-com-hashicorp-hil" ,go-github-com-hashicorp-hil)
;;         ("go-github-com-hashicorp-hcl" ,go-github-com-hashicorp-hcl)
;;         ("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-version"
;;          ,go-github-com-hashicorp-go-version)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-hashicorp-go-syslog"
;;          ,go-github-com-hashicorp-go-syslog)
;;         ("go-github-com-hashicorp-go-sockaddr"
;;          ,go-github-com-hashicorp-go-sockaddr)
;;         ("go-github-com-hashicorp-go-retryablehttp"
;;          ,go-github-com-hashicorp-go-retryablehttp)
;;         ("go-github-com-hashicorp-go-raftchunking"
;;          ,go-github-com-hashicorp-go-raftchunking)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-hashicorp-go-memdb" ,go-github-com-hashicorp-go-memdb)
;;         ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-hashicorp-go-discover"
;;          ,go-github-com-hashicorp-go-discover)
;;         ("go-github-com-hashicorp-go-connlimit"
;;          ,go-github-com-hashicorp-go-connlimit)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)
;;         ("go-github-com-hashicorp-go-checkpoint"
;;          ,go-github-com-hashicorp-go-checkpoint)
;;         ("go-github-com-hashicorp-go-bexpr" ,go-github-com-hashicorp-go-bexpr)
;;         ("go-github-com-google-tcpproxy" ,go-github-com-google-tcpproxy)
;;         ("go-github-com-google-pprof" ,go-github-com-google-pprof)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-querystring"
;;          ,go-github-com-google-go-querystring)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
;;         ("go-github-com-envoyproxy-go-control-plane"
;;          ,go-github-com-envoyproxy-go-control-plane)
;;         ("go-github-com-elazarl-go-bindata-assetfs"
;;          ,go-github-com-elazarl-go-bindata-assetfs)
;;         ("go-github-com-docker-go-connections"
;;          ,go-github-com-docker-go-connections)
;;         ("go-github-com-digitalocean-godo" ,go-github-com-digitalocean-godo)
;;         ("go-github-com-coreos-go-oidc" ,go-github-com-coreos-go-oidc)
;;         ("go-github-com-coredns-coredns" ,go-github-com-coredns-coredns)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
;;         ("go-github-com-armon-circbuf" ,go-github-com-armon-circbuf)
;;         ("go-github-com-nytimes-gziphandler"
;;          ,go-github-com-nytimes-gziphandler)
;;         ("go-github-com-microsoft-go-winio"
;;          ,go-github-com-microsoft-go-winio)))
;;     (home-page "https://github.com/hashicorp/consul")
;;     (synopsis "Consul")
;;     (description
;;       "Consul is a distributed, highly available, and data center aware solution to connect and configure applications across dynamic, distributed infrastructure.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-consul-api
;;   (package
;;     (name "go-github-com-hashicorp-consul-api")
;;     (version "1.10.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/consul")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zhwaz2q0r2c9zh5qc13v805fhpixxzaiiql7y8qhx6lkl4ng9ls"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/hashicorp/consul/api"
;;        #:unpack-path "github.com/hashicorp/consul"))
;;     (propagated-inputs
;;       `(("go-github-com-istio-gogo-genproto"
;;          ,go-github-com-istio-gogo-genproto)
;;         ("go-github-com-go-check-check" ,go-github-com-go-check-check)
;;         ("go-k8s-io-client-go" ,go-k8s-io-client-go)
;;         ("go-k8s-io-apimachinery" ,go-k8s-io-apimachinery)
;;         ("go-k8s-io-api" ,go-k8s-io-api)
;;         ("go-gopkg-in-square-go-jose-v2" ,go-gopkg-in-square-go-jose-v2)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-go-uber-org-goleak" ,go-go-uber-org-goleak)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-shirou-gopsutil-v3" ,go-github-com-shirou-gopsutil-v3)
;;         ("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
;;         ("go-github-com-rboyer-safeio" ,go-github-com-rboyer-safeio)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pquerna-cachecontrol"
;;          ,go-github-com-pquerna-cachecontrol)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-patrickmn-go-cache" ,go-github-com-patrickmn-go-cache)
;;         ("go-github-com-mitchellh-reflectwalk"
;;          ,go-github-com-mitchellh-reflectwalk)
;;         ("go-github-com-mitchellh-pointerstructure"
;;          ,go-github-com-mitchellh-pointerstructure)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-mitchellh-hashstructure"
;;          ,go-github-com-mitchellh-hashstructure)
;;         ("go-github-com-mitchellh-go-testing-interface"
;;          ,go-github-com-mitchellh-go-testing-interface)
;;         ("go-github-com-mitchellh-copystructure"
;;          ,go-github-com-mitchellh-copystructure)
;;         ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-konsorten-go-windows-terminal-sequences"
;;          ,go-github-com-konsorten-go-windows-terminal-sequences)
;;         ("go-github-com-joyent-triton-go" ,go-github-com-joyent-triton-go)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-hashicorp-yamux" ,go-github-com-hashicorp-yamux)
;;         ("go-github-com-hashicorp-vault-api"
;;          ,go-github-com-hashicorp-vault-api)
;;         ("go-github-com-hashicorp-serf" ,go-github-com-hashicorp-serf)
;;         ("go-github-com-hashicorp-raft-boltdb"
;;          ,go-github-com-hashicorp-raft-boltdb)
;;         ("go-github-com-hashicorp-raft-autopilot"
;;          ,go-github-com-hashicorp-raft-autopilot)
;;         ("go-github-com-hashicorp-raft" ,go-github-com-hashicorp-raft)
;;         ("go-github-com-hashicorp-net-rpc-msgpackrpc"
;;          ,go-github-com-hashicorp-net-rpc-msgpackrpc)
;;         ("go-github-com-hashicorp-memberlist"
;;          ,go-github-com-hashicorp-memberlist)
;;         ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
;;         ("go-github-com-hashicorp-hil" ,go-github-com-hashicorp-hil)
;;         ("go-github-com-hashicorp-hcl" ,go-github-com-hashicorp-hcl)
;;         ("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-version"
;;          ,go-github-com-hashicorp-go-version)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-hashicorp-go-syslog"
;;          ,go-github-com-hashicorp-go-syslog)
;;         ("go-github-com-hashicorp-go-sockaddr"
;;          ,go-github-com-hashicorp-go-sockaddr)
;;         ("go-github-com-hashicorp-go-retryablehttp"
;;          ,go-github-com-hashicorp-go-retryablehttp)
;;         ("go-github-com-hashicorp-go-raftchunking"
;;          ,go-github-com-hashicorp-go-raftchunking)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-hashicorp-go-memdb" ,go-github-com-hashicorp-go-memdb)
;;         ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-hashicorp-go-discover"
;;          ,go-github-com-hashicorp-go-discover)
;;         ("go-github-com-hashicorp-go-connlimit"
;;          ,go-github-com-hashicorp-go-connlimit)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)
;;         ("go-github-com-hashicorp-go-checkpoint"
;;          ,go-github-com-hashicorp-go-checkpoint)
;;         ("go-github-com-hashicorp-go-bexpr" ,go-github-com-hashicorp-go-bexpr)
;;         ("go-github-com-google-tcpproxy" ,go-github-com-google-tcpproxy)
;;         ("go-github-com-google-pprof" ,go-github-com-google-pprof)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-google-go-querystring"
;;          ,go-github-com-google-go-querystring)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
;;         ("go-github-com-envoyproxy-go-control-plane"
;;          ,go-github-com-envoyproxy-go-control-plane)
;;         ("go-github-com-elazarl-go-bindata-assetfs"
;;          ,go-github-com-elazarl-go-bindata-assetfs)
;;         ("go-github-com-docker-go-connections"
;;          ,go-github-com-docker-go-connections)
;;         ("go-github-com-digitalocean-godo" ,go-github-com-digitalocean-godo)
;;         ("go-github-com-coreos-go-oidc" ,go-github-com-coreos-go-oidc)
;;         ("go-github-com-coredns-coredns" ,go-github-com-coredns-coredns)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
;;         ("go-github-com-armon-circbuf" ,go-github-com-armon-circbuf)
;;         ("go-github-com-nytimes-gziphandler"
;;          ,go-github-com-nytimes-gziphandler)
;;         ("go-github-com-microsoft-go-winio"
;;          ,go-github-com-microsoft-go-winio)))
;;     (home-page "https://github.com/hashicorp/consul")
;;     (synopsis "Consul")
;;     (description
;;       "Consul is a distributed, highly available, and data center aware solution to connect and configure applications across dynamic, distributed infrastructure.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-shirou-gopsutil
;;   (package
;;     (name "go-github-com-shirou-gopsutil")
;;     (version "3.21.10+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shirou/gopsutil")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1q50i2fvwkm1f82rx037lgcam9z8bwhilhpkz4fb3m6lz0q88gr4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shirou/gopsutil"))
;;     (home-page "https://github.com/shirou/gopsutil")
;;     (synopsis "gopsutil: psutil for golang")
;;     (description
;;       "This is a port of psutil (@url{https://github.com/giampaolo/psutil),https://github.com/giampaolo/psutil)}.  The
;; challenge is porting all psutil functions on some architectures.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-olekukonko-tablewriter
;;   (package
;;     (name "go-github-com-olekukonko-tablewriter")
;;     (version "0.0.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/olekukonko/tablewriter")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zhnrih2px6jm8nxzkz8s7va3lj03bzwxim8wjba9zh7i78bp67z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/olekukonko/tablewriter"))
;;     (propagated-inputs
;;       `(("go-github-com-mattn-go-runewidth"
;;          ,go-github-com-mattn-go-runewidth)))
;;     (home-page "https://github.com/olekukonko/tablewriter")
;;     (synopsis "ASCII Table Writer")
;;     (description "Create & Generate text based table
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-kylelemons-godebug
;;   (package
;;     (name "go-github-com-kylelemons-godebug")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kylelemons/godebug")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0dkk3friykg8p6wgqryx6745ahhb9z1j740k7px9dac6v5xjp78c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/kylelemons/godebug"))
;;     (home-page "https://github.com/kylelemons/godebug")
;;     (synopsis "Pretty Printing for Go")
;;     (description
;;       "Have you ever wanted to get a pretty-printed version of a Go data structure,
;; complete with indentation?  I have found this especially useful in unit tests
;; and in debugging my code, and thus godebug was born!")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jackpal-go-nat-pmp
;;   (package
;;     (name "go-github-com-jackpal-go-nat-pmp")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jackpal/go-nat-pmp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1p2yrzfbkazc9nisr2iqjwzhb6q16zj6finyxxn2ikk7iiighl1g"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jackpal/go-nat-pmp"))
;;     (home-page "https://github.com/jackpal/go-nat-pmp")
;;     (synopsis "go-nat-pmp")
;;     (description
;;       "This package provides a Go language client for the NAT-PMP internet protocol for port mapping and discovering the external
;; IP address of a firewall.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-deckarep-golang-set
;;   (package
;;     (name "go-github-com-deckarep-golang-set")
;;     (version "1.7.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/deckarep/golang-set")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y64c0p6a7ww5jp6adm6fm97vsni86njw8wkwxfmciy466vhl0lf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/deckarep/golang-set"))
;;     (home-page "https://github.com/deckarep/golang-set")
;;     (synopsis "golang-set")
;;     (description
;;       "Package mapset implements a simple and generic set collection.
;; Items stored within it are unordered and unique.  It supports
;; typical set operations: membership testing, intersection, union,
;; difference, symmetric difference and cloning.
;; ")
;;     (license license:expat)))



;; (define-public go-github-com-masterminds-semver
;;   (package
;;     (name "go-github-com-masterminds-semver")
;;     (version "1.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Masterminds/semver")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1i169xscsxsh8lsw8bz2apnsqixld37xdnfh36i30xy5wnf0iwfx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Masterminds/semver"))
;;     (home-page "https://github.com/Masterminds/semver")
;;     (synopsis "SemVer")
;;     (description
;;       "Package semver provides the ability to work with Semantic Versions (@url{http://semver.org,http://semver.org}) in Go.
;; ")
;;     (license license:expat)))


;; (define-public go-github-com-leodido-go-urn
;;   (package
;;     (name "go-github-com-leodido-go-urn")
;;     (version "1.2.0")
;;     (home-page "https://github.com/leodido/go-urn")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url home-page)
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "1d4g1vkhc1180l1n7q48vl84b27c7cziywml78cyijbcdz2f8vim"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/leodido/go-urn"))
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (synopsis "Parser for uniform resource names as seen on RFC 2141")
;;     (description
;;      "This package implements a parser for uniform resource names (URN) as
;; specified by @uref{https://tools.ietf.org/html/rfc2141, IETF RFC 2141}.")
;;     (license license:expat)))

;; (define-public go-github-com-go-md2man
;;   (package
;;     (name "go-github-com-go-md2man")
;;     (version "2.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/cpuguy83/go-md2man")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0r1f7v475dxxgzqci1mxfliwadcrk86ippflx9n411325l4g3ghv"))
;;        (modules '((guix build utils)))
;;        (snippet '(begin
;;                    (delete-file-recursively "vendor")
;;                    #t))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/cpuguy83/go-md2man"))
;;     (propagated-inputs
;;      `(("go-github-com-russross-blackfriday" ,go-github-com-russross-blackfriday)))
;;     (home-page "https://github.com/cpuguy83/go-md2man")
;;     (synopsis "Convert markdown into roff")
;;     (description "Go-md2man is a Go program that converts markdown to roff for
;; the purpose of building man pages.")
;;     (license license:expat)))

;; (define-public go-github-com-decred-dcrd-lru
;;   (package
;;     (name "go-github-com-decred-dcrd-lru")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/decred/dcrd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pmm6ahk0s0qgswvchw60vi0qx9ji3dry8dyd85lhav7xlhpy2mx"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/decred/dcrd/lru"
;;        #:unpack-path "github.com/decred/dcrd"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-jrick-logrotate" ,go-github-com-jrick-logrotate)
;;         ("go-github-com-jrick-bitset" ,go-github-com-jrick-bitset)
;;         ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)
;;         ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
;;         ("go-github-com-decred-slog" ,go-github-com-decred-slog)
;;         ("go-github-com-decred-base58" ,go-github-com-decred-base58)
;;         ("go-github-com-dchest-siphash" ,go-github-com-dchest-siphash)
;;         ("go-github-com-dchest-blake256" ,go-github-com-dchest-blake256)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-btcsuite-winsvc" ,go-github-com-btcsuite-winsvc)
;;         ("go-github-com-btcsuite-snappy-go" ,go-github-com-btcsuite-snappy-go)
;;         ("go-github-com-btcsuite-goleveldb" ,go-github-com-btcsuite-goleveldb)
;;         ("go-github-com-btcsuite-go-socks" ,go-github-com-btcsuite-go-socks)
;;         ("go-github-com-agl-ed25519" ,go-github-com-agl-ed25519)))
;;     (home-page "https://github.com/decred/dcrd")
;;     (synopsis "dcrd")
;;     (description "dcrd is a full-node Decred implementation written in Go.
;; ")
;;     (license license:isc)))



;; (define-public go-github-com-syndtr-goleveldb
;;   (package
;;     (name "go-github-com-syndtr-goleveldb")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/syndtr/goleveldb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "042k0gbzs5waqpxmd7nv5h93mlva861s66c3s9gfg1fym5dx4vmd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/syndtr/goleveldb"))
;;     (propagated-inputs
;;       `(("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)))
;;     (home-page "https://github.com/syndtr/goleveldb")
;;     (synopsis "Installation")
;;     (description
;;       "This is an implementation of the @url{http:code.google.com/p/leveldb,LevelDB key/value database} in the @url{http:golang.org,Go programming language}.")
;;     (license license:bsd-2)))



;; (define-public go-github-com-masterminds-goutils
;;   (package
;;     (name "go-github-com-masterminds-goutils")
;;     (version "1.1.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/Masterminds/goutils")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "09m4mbcdlv9ng3xcrmjlxi0niavby52y9nl2jhjnbx1xxpjw0jrh"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/Masterminds/goutils"))
;;     (home-page "https://github.com/Masterminds/goutils/")
;;     (synopsis "Utility functions to manipulate strings")
;;     (description "GoUtils provides utility functions to manipulate strings in
;; various ways.  It is a Go implementation of some string manipulation libraries
;; of Java Apache Commons.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-dchest-siphash
;;   (package
;;     (name "go-github-com-dchest-siphash")
;;     (version "1.2.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri
;;         (git-reference
;;          (url "https://github.com/dchest/siphash")
;;          (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "08s076y7vmjqnq7jz0762hkm896r6r31v8b31a3gy0n8rfa01k8k"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/dchest/siphash"))
;;     (home-page "https://github.com/dchest/siphash")
;;     (synopsis "Go library for pseudorandom functions")
;;     (description "SipHash is a family of pseudorandom functions (PRFs) optimized
;; for speed on short messages.")
;;     (license license:cc0)))

;; (define-public go-github-com-pelletier-go-toml
;;   (package
;;     (name "go-github-com-pelletier-go-toml")
;;     (version "1.9.3")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/pelletier/go-toml")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0cqwnvlgs1wgdgjxlwv8j52f7d6syniadr51sjh2fya99m5wzvsn"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/pelletier/go-toml"))
;;     (native-inputs
;;      `(("github.com/BurntSushi/toml" ,go-github-com-burntsushi-toml)
;;        ("github.com/davecgh/go-spew" ,go-github-com-davecgh-go-spew)
;;        ("gopkg.in/yaml.v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://github.com/pelletier/go-toml")
;;     (synopsis "Go library for the TOML configuration language")
;;     (description "Go library for the TOML configuration language")
;;     (license license:expat)))

;; (define-public go-github-com-go-sourcemap-sourcemap
;;   (package
;;     (name "go-github-com-go-sourcemap-sourcemap")
;;     (version "2.1.3+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-sourcemap/sourcemap")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "08i1xysiqbqzip3xjlkwivg8cbcym83hxwyzkbmjy0z7y8y5fy3r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-sourcemap/sourcemap"))
;;     (home-page "https://github.com/go-sourcemap/sourcemap")
;;     (synopsis "Source maps consumer for Golang")
;;     (description
;;       "API docs: @url{https://godoc.org/github.com/go-sourcemap/sourcemap,https://godoc.org/github.com/go-sourcemap/sourcemap}.
;; Examples: @url{https://godoc.org/github.com/go-sourcemap/sourcemap#pkg-examples,https://godoc.org/github.com/go-sourcemap/sourcemap#pkg-examples}.
;; Spec: @url{https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit,https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit}.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-masterminds-sprig
;;   (package
;;     (name "go-github-com-masterminds-sprig")
;;     (version "3.1.0")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/Masterminds/sprig")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0wwi8n2adjc5jlga25lqq0hrz4jcgd5vpll68y2dfji034caaq18"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:tests? #f ;network tests only
;;        #:import-path "github.com/Masterminds/sprig"))
;;     (native-inputs
;;      `(("go-github-com-masterminds-goutils" ,go-github-com-masterminds-goutils)
;;        ("go-github-com-masterminds-semver" ,go-github-com-masterminds-semver)
;;        ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;        ("go-github-com-huandu-xstrings" ,go-github-com-huandu-xstrings)
;;        ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;        ("go-github-com-mitchellh-reflectwalk" ,go-github-com-mitchellh-reflectwalk)
;;        ("go-github-com-mitchellh-copystructure" ,go-github-com-mitchellh-copystructure)
;;        ("go-github-com-spf13-cast" ,go-github-com-spf13-cast)
;;        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/Masterminds/sprig/")
;;     (synopsis "Template functions for Go templates")
;;     (description "Sprig is a library that provides more than 100 commonly used
;; template functions.")
;;     (license license:expat)))

;; (define-public go-sourcegraph-com-sourcegraph-syntaxhighlight
;;   (package
;;     (name "go-sourcegraph-com-sourcegraph-syntaxhighlight")
;;     (version "0.0.0-20170531221838-bd320f5d308e")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sourcegraph/syntaxhighlight")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01pf2ny2q76hwy05d1407799hah7qbnaqww5dszba287shraar92"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "sourcegraph.com/sourcegraph/syntaxhighlight"))
;;     (home-page "https://sourcegraph.com/sourcegraph/syntaxhighlight")
;;     (synopsis "syntaxhighlight")
;;     (description
;;       "Package syntaxhighlight provides syntax highlighting for code.  It currently
;; uses a language-independent lexer and performs decently on JavaScript, Java,
;; Ruby, Python, Go, and C.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-sourcegraph-syntaxhighlight go-sourcegraph-com-sourcegraph-syntaxhighlight)


;; (define-public go-github-com-sergi-go-diff
;;   (package
;;     (name "go-github-com-sergi-go-diff")
;;     (version "1.2.0")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/sergi/go-diff")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0cbj8nshllq102iiav0k1s01b8gwbkzj674g71n938qqna32y2pa"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/sergi/go-diff/diffmatchpatch"
;;        #:unpack-path "github.com/sergi/go-diff"))
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/sergi/go-diff/")
;;     (synopsis "Algorithms to perform operations for synchronizing plain text")
;;     (description "@code{go-diff} offers algorithms to perform operations required for
;; synchronizing plain text:
;; @itemize
;; @item compare two texts and return their differences
;; @item perform fuzzy matching of text
;; @item apply patches onto text
;; @end itemize\n")
;;     (license license:expat)))

;; (define-public go-go-opentelemetry-io-otel-metric
;;   (package
;;     (name "go-go-opentelemetry-io-otel-metric")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/open-telemetry/opentelemetry-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "go.opentelemetry.io/otel/metric"
;;        #:unpack-path "github.com/open-telemetry/opentelemetry-go"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/open-telemetry/opentelemetry-go")
;;     (synopsis "OpenTelemetry-Go")
;;     (description
;;       "Package otel provides global access to the OpenTelemetry API.  The subpackages of
;; the otel package provide an implementation of the OpenTelemetry API.
;; ")
;;     (license #f)))



;; (define-public go-github-com-huandu-xstrings
;;   (package
;;     (name "go-github-com-huandu-xstrings")
;;     (version "1.3.2")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/huandu/xstrings")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0pwar6rc0fqb6pll38a44s81g5kb65vbg71jg5lx8caphjnikq5r"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/huandu/xstrings"))
;;     (home-page "https://github.com/huandu/xstrings/")
;;     (synopsis "Collection of string functions")
;;     (description "Go package xstrings is a collection of string functions,
;; which are widely used in other languages but absent in Go package strings.")
;;     (license license:expat)))

;; (define-public go-github-com-gogo-protobuf
;;   (package
;;     (name "go-github-com-gogo-protobuf")
;;     (version "1.3.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/gogo/protobuf")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0x77x64sxjgfhmbijqfzmj8h4ar25l2w97h01q3cqs1wk7zfnkhp"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/gogo/protobuf"
;;        ; Source-only package
;;        #:tests? #f
;;        #:phases
;;        (modify-phases %standard-phases
;;          (delete 'build))))
;;     (synopsis "Protocol Buffers for Go with Gadgets")
;;     (description "Gogoprotobuf is a fork of golang/protobuf with extra code
;; generation features.  This code generation is used to achieve:
;; @itemize
;; @item fast marshalling and unmarshalling
;; @item more canonical Go structures
;; @item goprotobuf compatibility
;; @item less typing by optionally generating extra helper code
;; @item peace of mind by optionally generating test and benchmark code
;; @item other serialization formats
;; @end itemize")
;;     (home-page "https://github.com/gogo/protobuf")
;;     (license license:bsd-3)))

;; (define-public go-github-com-mwitkow-go-conntrack
;;   (package
;;     (name "go-github-com-mwitkow-go-conntrack")
;;     (version "0.0.0-20190716064945-2f068394615f")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mwitkow/go-conntrack")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ymjmy12ks7smgwmrwsa5kf07d9w5kpk1dn650azlzr61b561aw7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mwitkow/go-conntrack"))
;;     (home-page "https://github.com/mwitkow/go-conntrack")
;;     (synopsis "Go tracing and monitoring (Prometheus) for")
;;     (description
;;       "@url{https://prometheus.io/,Prometheus} monitoring and @url{https://godoc.org/golang.org/x/net/trace#EventLog,(code x/net/trace)} tracing wrappers @code{net.Conn}, both inbound (@code{net.Listener}) and outbound (@code{net.Dialer}).")
;;     (license license:asl2.0)))

;; (define-public go-github-com-prometheus-common
;;   (package
;;     (name "go-github-com-prometheus-common")
;;     (version "0.32.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/prometheus/common")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0501dwlv427vr78c59h4z25vxzkzjx76haydjj4pql1sx44546vv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/prometheus/common"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-gopkg-in-alecthomas-kingpin-v2"
;;          ,go-gopkg-in-alecthomas-kingpin-v2)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-mwitkow-go-conntrack"
;;          ,go-github-com-mwitkow-go-conntrack)
;;         ("go-github-com-matttproud-golang-protobuf-extensions"
;;          ,go-github-com-matttproud-golang-protobuf-extensions)
;;         ("go-github-com-julienschmidt-httprouter"
;;          ,go-github-com-julienschmidt-httprouter)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-go-kit-log" ,go-github-com-go-kit-log)))
;;     (home-page "https://github.com/prometheus/common")
;;     (synopsis "Common")
;;     (description
;;       "This repository contains Go libraries that are shared across Prometheus
;; components and libraries.  They are considered internal to Prometheus, without
;; any stability guarantees for external usage.")
;;     (license license:asl2.0)))



;; (define-public go-github-com-imdario-mergo
;;   (package
;;     (name "go-github-com-imdario-mergo")
;;     (version "0.3.10")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/imdario/mergo")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "09h765p8yby9r8s0a3hv5kl8n2i382mda76wmvk48w1cc1w9s92p"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/imdario/mergo"))
;;     (native-inputs
;;      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://github.com/imdario/mergo/")
;;     (synopsis "Helper to merge structs and maps in Golang")
;;     (description "Helper to merge structs and maps in Golang.  Useful for
;; configuration default values, avoiding messy if-statements.

;; Mergo merges same-type structs and maps by setting default values in
;; zero-value fields.  Mergo won't merge unexported (private) fields.  It will do
;; recursively any exported one.  It also won't merge structs inside
;; maps (because they are not addressable using Go reflection).")
;;     (license license:bsd-3)))

;; (define-public go-github-com-mitchellh-copystructure
;;   (package
;;     (name "go-github-com-mitchellh-copystructure")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/mitchellh/copystructure")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "05njg92w1088v4yl0js0zdrpfq6k37i9j14mxkr3p90p5yd9rrrr"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/mitchellh/copystructure"))
;;     (native-inputs
;;      `(("go-github-com-mitchellh-reflectwalk" ,go-github-com-mitchellh-reflectwalk)))
;;     (home-page "https://github.com/mitchellh/copystructure")
;;     (synopsis "Go library for decoding deep copying values")
;;     (description "@code{copystructure} is a Go library for deep copying values
;; in Go.

;; This allows you to copy Go values that may contain reference values such as
;; maps, slices, or pointers, and copy their data as well instead of just their
;; references.")
;;     (license license:expat)))

;; (define-public go-github-com-spf13-cobra
;;   (package
;;     (name "go-github-com-spf13-cobra")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/spf13/cobra")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0vbppqqhby302a5ayn0296jqr71qkcd4c9am7wzsk6z71fwdsa7h"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/spf13/cobra"))
;;     (propagated-inputs
;;      `(("github.com/spf13/pflag" ,go-github-com-spf13-pflag)))
;;     (home-page "https://github.com/spf13/cobra")
;;     (synopsis "Go library for creating CLI applications")
;;     (description "Cobra is both a library for creating powerful modern CLI
;; applications as well as a program to generate applications and command files.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-burntsushi-toml
;;   (package
;;     (name "go-github-com-burntsushi-toml")
;;     (version "0.3.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/BurntSushi/toml")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "1fjdwwfzyzllgiwydknf1pwjvy49qxfsczqx5gz3y0izs7as99j6"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/BurntSushi/toml"))
;;     (home-page "https://github.com/BurntSushi/toml")
;;     (synopsis "Toml parser and encoder for Go")
;;     (description "This package is toml parser and encoder for Go.  The interface
;; is similar to Go's standard library @code{json} and @code{xml} package.")
;;     (license license:expat)))

;; (define-public go-github-com-fsnotify-fsnotify
;;   (package
;;     (name "go-github-com-fsnotify-fsnotify")
;;     (version "1.4.9")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/fsnotify/fsnotify")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "1i1r72knpbfwwql9frn9bqc3nhfc2ai5m6qllcyr6wban62lr40x"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/fsnotify/fsnotify"))
;;     (propagated-inputs
;;      `(("golang.org/x/sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/fsnotify/fsnotify")
;;     (synopsis "File system notifications for Go")
;;     (description "File system notifications for Go")
;;     (license license:bsd-3)))

;; (define-public go-github-com-kisielk-gotool
;;   (package
;;     (name "go-github-com-kisielk-gotool")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/kisielk/gotool")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "14af2pa0ssyp8bp2mvdw184s5wcysk6akil3wzxmr05wwy951iwn"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/kisielk/gotool"))
;;     (home-page "https://github.com/kisielk/gotool")
;;     (synopsis "Go library of utility functions")
;;     (description
;;      "This package contains utility functions used to implement the standard
;; @code{cmd/go} tool, provided as a convenience to developers who want to write
;; tools with similar semantics.")
;;     (license license:expat)))

;; (define-public go-github-com-urfave-cli
;;   (package
;;     (name "go-github-com-urfave-cli")
;;     (version "1.22.2")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/urfave/cli")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "10mcnvi5qmn00vpyk6si8gjka7p654wr9hac4zc9w5h3ickhvbdc"))
;;        (patches (search-patches "go-github-com-urfave-cli-fix-tests.patch"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/urfave/cli"))
;;     (propagated-inputs
;;      `(("go-github-com-go-md2man" ,go-github-com-go-md2man)))
;;     (home-page "https://github.com/urfave/cli")
;;     (synopsis "Simple, fast, and fun package for building command line apps in Go")
;;     (description "@command{cli} is a simple, fast, and fun package for
;; building command line apps in Go.  The goal is to enable developers to write
;; fast and distributable command line applications in an expressive way.")
;;     (license license:expat)))

;; (define-public go-github-com-urfave-cli-v2
;;   (package
;;     (inherit go-github-com-urfave-cli)
;;     (name "go-github-com-urfave-cli-v2")
;;     (version "2.3.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/urfave/cli")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "08pvn7gyfznni72xrxfh2x6xxa8ykr7l1ka278js8g8qkh71bj8l"))
;;        ;; XXX: Remove patch when updating.
;;        (patches
;;         (search-patches "go-github-com-urfave-cli-v2-fix-tests.patch"))))
;;     (arguments
;;      '(#:import-path "github.com/urfave/cli/v2"))))

;; (define-public go-honnef-co-go-tools
;;   (package
;;     (name "go-honnef-co-go-tools")
;;     (version "0.1.3")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/dominikh/go-tools")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "17li8jbw3cpn59kpcl3j3r2an4wkx3fc81xn0j4xgbjpkxh9493n"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "honnef.co/go/tools"
;;        #:tests? #f
;;        ;; Source-only package
;;        #:phases
;;        (modify-phases %standard-phases
;;          (delete 'build))))
;;     (propagated-inputs
;;      `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;        ("go-github-com-kisielk-gotool",go-github-com-kisielk-gotool)
;;        ("go-github-com-burntsushi-toml" ,go-github-com-burntsushi-toml)))
;;     (home-page "https://honnef.co/go/tools")
;;     (synopsis "Staticcheck advanced Go linter")
;;     (description
;;      "Staticcheck is a state of the art linter for the Go programming language.
;; Using static analysis, it finds bugs and performance issues, offers
;; simplifications, and enforces style rules.")
;;     (license license:expat)))

;; (define-public go-github-com-spf13-pflag
;;   (package
;;     (name "go-github-com-spf13-pflag")
;;     (version "1.0.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/spf13/pflag")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;          (base32
;;           "0gpmacngd0gpslnbkzi263f5ishigzgh6pbdv9hp092rnjl4nd31"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/spf13/pflag"))
;;     (home-page "https://github.com/spf13/pflag")
;;     (synopsis "Replacement for Go's @code{flag} package")
;;     (description
;;      "Pflag is library to replace Go's @code{flag} package.  It implements
;; POSIX/GNU-style command-line options with double hyphens.  It is is compatible
;; with the
;; @uref{https://www.gnu.org/software/libc/manual/html_node/Argument-Syntax.html,
;; GNU extensions} to the POSIX recommendations for command-line options.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-jmespath-go-jmespath
;;   (package
;;     (name "go-github-com-jmespath-go-jmespath")
;;     (version "0.4.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/jmespath/go-jmespath")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "18zyr9nlywmwp3wpzcjxrgq9s9d2mmc6zg6xhsna00m663nkyc3n"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/jmespath/go-jmespath"))
;;     (native-inputs
;;      `(("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;        ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://github.com/jmespath/go-jmespath")
;;     (synopsis "Golang implementation of JMESPath")
;;     (description
;;      "This package implements JMESPath, a query language for JSON.  It
;; transforms one JSON document into another through a JMESPath expression.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-go-syslog
;;   (package
;;     (name "go-github-com-hashicorp-go-syslog")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/hashicorp/go-syslog")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "09vccqggz212cg0jir6vv708d6mx0f9w5bxrcdah3h6chgmal6v1"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/hashicorp/go-syslog"))
;;     (home-page "https://github.com/hashicorp/go-syslog")
;;     (synopsis "Golang syslog wrapper, cross-compile friendly")
;;     (description "This package is a very simple wrapper around log/syslog")
;;     (license license:expat)))

;; (define-public go-github-com-golang-freetype
;;   (let ((commit "e2365dfdc4a05e4b8299a783240d4a7d5a65d4e4")
;;         (revision "1"))
;;     (package
;;       (name "go-github-com-golang-freetype")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                        (url "https://github.com/golang/freetype")
;;                        (commit commit)))
;;                 (file-name (string-append "go-github-com-golang-freetype-"
;;                                           version "-checkout"))
;;                 (sha256
;;                  (base32
;;                   "194w3djc6fv1rgcjqds085b9fq074panc5vw582bcb8dbfzsrqxc"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "github.com/golang/freetype"))
;;       (propagated-inputs
;;        `(("go-golang-org-x-image" ,go-golang-org-x-image)))
;;       (home-page "https://github.com/golang/freetype")
;;       (synopsis "Freetype font rasterizer in the Go programming language")
;;       (description "The Freetype font rasterizer in the Go programming language.")
;;       (license (list license:freetype
;;                      license:gpl2+)))))

;; (define-public go-github-com-opentracing-opentracing-go
;;   (package
;;     (name "go-github-com-opentracing-opentracing-go")
;;     (version "1.2.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri
;;         (git-reference
;;          (url "https://github.com/opentracing/opentracing-go")
;;          (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "04rgdwl29kimp2wnm4dycnzp7941hvpj6wym85x23c6fclacm94h"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/opentracing/opentracing-go"))
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify"
;;         ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/opentracing/opentracing-go")
;;     (synopsis "OpenTracing API for Go")
;;     (description "OpenTracing-Go is a Go implementation of the OpenTracing API.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-fatih-color
;;   (package
;;     (name "go-github-com-fatih-color")
;;     (version "1.8.0")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                      (url "https://github.com/fatih/color")
;;                      (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "1zc0zlilf03h121f9jqq3ar0hfm7706547zysxp2qxbm920pz7h0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/fatih/color"))
;;     (synopsis "Print colored text in Go")
;;     (description "This package provides an ANSI color package to output
;; colorized or SGR defined output to the standard output.")
;;     (home-page "https://godoc.org/github.com/fatih/color")
;;     (license license:expat)))

;; (define-public go-github-com-rogpeppe-go-internal
;;   (package
;;     (name "go-github-com-rogpeppe-go-internal")
;;     (version "1.6.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/rogpeppe/go-internal")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "00j2vpp1bsggdvw1winkz23mg0q6drjiir5q0k49pmqx1sh7106l"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/rogpeppe/go-internal"
;;        ; Source-only package
;;        #:tests? #f
;;        #:phases
;;        (modify-phases %standard-phases
;;          (delete 'build))))
;;     (home-page "https://github.com/rogpeppe/go-internal/")
;;     (synopsis "Internal packages from the Go standard library")
;;     (description "This repository factors out an opinionated selection of
;; internal packages and functionality from the Go standard library.  Currently
;; this consists mostly of packages and testing code from within the Go tool
;; implementation.

;; Included are the following:
;; @itemize
;; @item dirhash: calculate hashes over directory trees the same way that the Go tool does.
;; @item goproxytest: a GOPROXY implementation designed for test use.
;; @item gotooltest: Use the Go tool inside test scripts (see testscript below)
;; @item imports: list of known architectures and OSs, and support for reading import import statements.
;; @item modfile: read and write go.mod files while preserving formatting and comments.
;; @item module: module paths and versions.
;; @item par: do work in parallel.
;; @item semver: semantic version parsing.
;; @item testenv: information on the current testing environment.
;; @item testscript: script-based testing based on txtar files
;; @item txtar: simple text-based file archives for testing.
;; @end itemize\n")
;;     (license license:bsd-3)))

;; (define-public go-github-com-google-go-cmp-cmp
;;   (package
;;     (name "go-github-com-google-go-cmp-cmp")
;;     (version "0.5.2")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                      (url "https://github.com/google/go-cmp")
;;                      (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0qchy411jm9q2l9mf7x3ry2ycaqp9xdhf2nx14qrpzcxfigv2705"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/google/go-cmp/cmp"
;;        #:unpack-path "github.com/google/go-cmp"))
;;     (propagated-inputs
;;      `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)))
;;     (synopsis "Determine equality of values in Go")
;;     (description "This package provides a more powerful and safer
;; alternative to @code{reflect.DeepEqual} for comparing whether two values
;; are semantically equal in Go (for writing tests).")
;;     (home-page "https://godoc.org/github.com/google/go-cmp/cmp")
;;     (license license:asl2.0)))

;; (define-public go-go-uber-org-atomic
;;   (package
;;     (name "go-go-uber-org-atomic")
;;     (version "1.8.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/uber-go/atomic")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "0grswsk7nkf7zmmychf6aj6032shyag1kgs6zf7qwxyn55dym1v8"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "go.uber.org/atomic"))
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;        ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://go.uber.org/atomic")
;;     (synopsis "Wrapper types for sync/atomic")
;;     (description
;;      "This package provides simple wrappers for primitive types to enforce
;; atomic access.")
;;     (license license:expat)))

;; (define-public go-github-com-frankban-quicktest
;;   (package
;;     (name "go-github-com-frankban-quicktest")
;;     (version "1.11.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/frankban/quicktest")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0b1b44b2hli2p969gqz30z8v9z6ahlklpqzi17nwk1lsjz9yv938"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/frankban/quicktest"))
;;     (propagated-inputs
;;      `(("go-github-com-google-go-cmp-cmp" ,go-github-com-google-go-cmp-cmp)
;;        ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
;;     (home-page "https://github.com/frankban/quicktest")
;;     (synopsis "Quick helpers for testing Go applications")
;;     (description
;;      "Package quicktest provides a collection of Go helpers for writing
;; tests.")
;;     (license license:expat)))

;; (define-public go-github-com-prometheus-procfs
;;   (package
;;     (name "go-github-com-prometheus-procfs")
;;     (version "0.7.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/prometheus/procfs")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00z7ghcb86y2ajx0xvwmn3d18nq4djmvmjn52crgm85gsl442lb4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/prometheus/procfs"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/prometheus/procfs")
;;     (synopsis "procfs")
;;     (description
;;       "Package procfs provides functions to retrieve system, kernel and process
;; metrics from the pseudo-filesystem proc.
;; ")
;;     (license license:asl2.0)))



;; (define-public go-golang-org-x-image
;;   (let ((commit "58c23975cae11f062d4b3b0c143fe248faac195d")
;;         (revision "1"))
;;     (package
;;       (name "go-golang-org-x-image")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                        (url "https://go.googlesource.com/image")
;;                        (commit commit)))
;;                 (file-name (string-append "go.googlesource.com-image-"
;;                                           version "-checkout"))
;;                 (sha256
;;                  (base32
;;                   "0i2p2girc1sfcic6xs6vrq0fp3szfx057xppksb67kliywjjrm5x"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "golang.org/x/image"
;;          ; Source-only package
;;          #:tests? #f
;;          #:phases
;;          (modify-phases %standard-phases
;;            (delete 'build))))
;;       (home-page "https://go.googlesource.com/image")
;;       (synopsis "Supplemental Go image libraries")
;;       (description "This package provides supplemental Go libraries for image
;; processing.")
;;       (license license:bsd-3))))

;; (define-public go-github-com-gorilla-securecookie
;;   (package
;;     (name "go-github-com-gorilla-securecookie")
;;     (version "1.1.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/gorilla/securecookie")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "16bqimpxs9vj5n59vm04y04v665l7jh0sddxn787pfafyxcmh410"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/gorilla/securecookie"))
;;     (home-page "https://github.com/gorilla/securecookie")
;;     (synopsis "Encodes and decodes authenticated and optionally encrypted
;; cookie values")
;;     (description
;;      "Gorilla/securecookie encodes and decodes authenticated and optionally
;; encrypted cookie values for Go web applications.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-dustin-go-humanize
;;   (package
;;     (name "go-github-com-dustin-go-humanize")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/dustin/go-humanize")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "1kqf1kavdyvjk7f8kx62pnm7fbypn9z1vbf8v2qdh3y7z7a0cbl3"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/dustin/go-humanize"))
;;     (home-page "https://github.com/dustin/go-humanize")
;;     (synopsis "Humane unit formatter")
;;     (description "@code{go-humanize} provides formatters for units to human
;; friendly sizes.  It converts boring ugly numbers to human-friendly strings and
;; back.")
;;     (license license:expat)))

;; (define-public go-github-com-cactus-go-statsd-client-statsd
;;   (package
;;     (name "go-github-com-cactus-go-statsd-client-statsd")
;;     (version "3.2.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cactus/go-statsd-client")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1clpj7i26mwl1z5fvdszj78r8i0w6f5ggw7l312ndh41qvhdy5gk"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/cactus/go-statsd-client/statsd"
;;        #:unpack-path "github.com/cactus/go-statsd-client"))
;;     (home-page "https://github.com/cactus/go-statsd-client")
;;     (synopsis "go-statsd-client")
;;     (description
;;       "This package provides a @url{https://github.com/etsy/statsd,StatsD} client (UDP) for Go.")
;;     (license license:expat)))



;; (define-public go-github-com-golang-snappy
;;   (package
;;     (name "go-github-com-golang-snappy")
;;     (version "0.0.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/snappy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "004cw699yz3pdpawhjhpa0y94c4w479nw1rf39zj6h6027kpwv2j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/snappy"))
;;     (home-page "https://github.com/golang/snappy")
;;     (synopsis #f)
;;     (description
;;       "Package snappy implements the Snappy compression format.  It aims for very
;; high speeds and reasonable compression.
;; ")
;;     (license license:bsd-3)))



;; (define-public go-github-com-mattn-go-isatty
;;   (package
;;     (name "go-github-com-mattn-go-isatty")
;;     (version "0.0.11")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/mattn/go-isatty")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0h671sv7hfprja495kavazkalkx7xzaqksjh13brcnwq67ijrali"))))
;;     (build-system go-build-system)
;;     (propagated-inputs
;;      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (arguments
;;      '(#:import-path "github.com/mattn/go-isatty"))
;;     (home-page "https://github.com/mattn/go-isatty")
;;     (synopsis "Provide @code{isatty} for Golang")
;;     (description "This package provides @code{isatty}, a Go module that can
;; tell you whether a file descriptor points to a terminal and the type of the
;; terminal.")
;;     (license license:expat)))

;; (define-public go-github-com-agl-ed25519
;;   (package
;;     (name "go-github-com-agl-ed25519")
;;     (version "0.0.0-20200225211852-fd4d107ace12")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/agl/ed25519")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13hq6sfbfnhp3734pnmka58hidfz17y18y9a40qqqb3j3f85g2dp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/agl/ed25519"))
;;     (home-page "https://github.com/agl/ed25519")
;;     (synopsis #f)
;;     (description
;;       "Package ed25519 implements the Ed25519 signature algorithm.  See
;; @url{http://ed25519.cr.yp.to/,http://ed25519.cr.yp.to/}.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-dchest-blake256
;;   (package
;;     (name "go-github-com-dchest-blake256")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dchest/blake256")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00244qhky34ym53dqxzhlmyqx80b3966w5shlnwd6v8vcs7iza4n"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dchest/blake256"))
;;     (home-page "https://github.com/dchest/blake256")
;;     (synopsis #f)
;;     (description #f)
;;     (license #f)))

;; (define-public go-github-com-decred-dcrd-crypto-blake256
;;   (package
;;     (name "go-github-com-decred-dcrd-crypto-blake256")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/decred/dcrd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0m2mxrkbnr4dfan9ljxq9dd5hhqmpx5n9pd4hnwn5mlj4zgv018a"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/decred/dcrd/crypto/blake256"
;;         #:unpack-path
;;         "github.com/decred/dcrd"))
;;     (home-page "https://github.com/decred/dcrd")
;;     (synopsis "Package blake256")
;;     (description
;;       "Package blake256 implements BLAKE-256 and BLAKE-224 hash functions (SHA-3
;; candidate).
;; ")
;;     (license license:isc)))

;; (define-public go-github-com-decred-base58
;;   (package
;;     (name "go-github-com-decred-base58")
;;     (version "1.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/decred/base58")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "112hqxwld7r203q18zn1rvg1zyac65ak6jy6ayscbnppif9287h6"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/decred/base58"))
;;     (propagated-inputs
;;       `(("go-github-com-decred-dcrd-crypto-blake256"
;;          ,go-github-com-decred-dcrd-crypto-blake256)))
;;     (home-page "https://github.com/decred/base58")
;;     (synopsis "base58")
;;     (description
;;       "Package base58 provides an API for working with modified base58 and Base58Check
;; encodings.
;; ")
;;     (license license:isc)))

;; (define-public go-github-com-decred-slog
;;   (package
;;     (name "go-github-com-decred-slog")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/decred/slog")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1pnrldkvpq04v6392ghyzsccaqd2vf5wxbw38jk23w77f6hqfxy2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/decred/slog"))
;;     (home-page "https://github.com/decred/slog")
;;     (synopsis "slog")
;;     (description
;;       "Package slog defines an interface and default implementation for subsystem
;; logging.
;; ")
;;     (license license:isc)))

;; (define-public go-github-com-jrick-bitset
;;   (package
;;     (name "go-github-com-jrick-bitset")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jrick/bitset")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "140mqhxmi00hqmyxpbh5k1i1bacyrbgn18n05yiqnkgzhsnf11sd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jrick/bitset"))
;;     (home-page "https://github.com/jrick/bitset")
;;     (synopsis "bitset")
;;     (description
;;       "Package bitset provides bitset implementations for bit packing binary
;; values into pointers and bytes.
;; ")
;;     (license license:isc)))

;; (define-public go-github-com-decred-dcrd
;;   (package
;;     (name "go-github-com-decred-dcrd")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/decred/dcrd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pmm6ahk0s0qgswvchw60vi0qx9ji3dry8dyd85lhav7xlhpy2mx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/decred/dcrd"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-jrick-logrotate" ,go-github-com-jrick-logrotate)
;;         ("go-github-com-jrick-bitset" ,go-github-com-jrick-bitset)
;;         ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)
;;         ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
;;         ("go-github-com-decred-slog" ,go-github-com-decred-slog)
;;         ("go-github-com-decred-base58" ,go-github-com-decred-base58)
;;         ("go-github-com-dchest-siphash" ,go-github-com-dchest-siphash)
;;         ("go-github-com-dchest-blake256" ,go-github-com-dchest-blake256)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-btcsuite-winsvc" ,go-github-com-btcsuite-winsvc)
;;         ("go-github-com-btcsuite-snappy-go" ,go-github-com-btcsuite-snappy-go)
;;         ("go-github-com-btcsuite-goleveldb" ,go-github-com-btcsuite-goleveldb)
;;         ("go-github-com-btcsuite-go-socks" ,go-github-com-btcsuite-go-socks)
;;         ("go-github-com-agl-ed25519" ,go-github-com-agl-ed25519)))
;;     (home-page "https://github.com/decred/dcrd")
;;     (synopsis "dcrd")
;;     (description "dcrd is a full-node Decred implementation written in Go.
;; ")
;;     (license license:isc)))



;; (define-public go-github-com-willf-bitset
;;   (package
;;     (name "go-github-com-willf-bitset")
;;     (version "1.1.10")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                      (url "https://github.com/willf/bitset")
;;                      (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0wpaxg6va3qwd0hq0b8rpb1hswvzzbfm2h8sjmcsdpbkydjjx9zg"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/willf/bitset"))
;;     (synopsis "Bitsets in Go")
;;     (description "This package provides a Go implementation of bitsets, which
;; are a mapping between non-negative integers and boolean values focused on
;; efficient space usage.")
;;     (home-page "https://github.com/willf/bitset")
;;     (license license:bsd-3)))

;; (define-public go-gioui-org-cpu
;;   (package
;;     (name "go-gioui-org-cpu")
;;     (version "0.0.0-20210817075930-8d6a761490d2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://git.sr.ht/~eliasnaur/gio-cpu")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11famy22b8cx5aizaq2x7n48r0j36hdkkc04jqc4rl7nv72akwx8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "gioui.org/cpu"))
;;     (home-page "https://gioui.org/cpu")
;;     (synopsis "Compile and run compute programs on CPU")
;;     (description
;;       "This projects contains the compiler for turning Vulkan SPIR-V compute shaders
;; into binaries for arm64, arm or amd64, using
;; @url{https://github.com/eliasnaur/swiftshader,SwiftShader} with a few
;; modifications.  A runtime implemented in C and Go is available for running the
;; resulting binaries.")
;;     (license license:expat)))

;; (define-public go-gioui-org-shader
;;   (package
;;     (name "go-gioui-org-shader")
;;     (version "1.0.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://git.sr.ht/~eliasnaur/gio-shader")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0xpralzzcgcsfakmdp771cb084c98jxacg2aq19lxzwdi5471z4s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "gioui.org/shader"))
;;     (propagated-inputs `(("go-gioui-org-cpu" ,go-gioui-org-cpu)))
;;     (home-page "https://gioui.org/shader")
;;     (synopsis "GPU programs for the Gio project")
;;     (description
;;       "This repository contains the source code for the @url{https://gioui.org,Gio}
;; project.  It also contains the generators and dereived versions for use with the
;; GPU APIs supported by Gio.")
;;     (license license:expat)))

;; (define-public go-gioui-org
;;   (package
;;     (name "go-gioui-org")
;;     (version "0.0.0-20211026101311-9cf7cc75f468")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://git.sr.ht/~eliasnaur/gio")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "182srjmdn2jz561d3i2vq99lnhabnp2jdsz2z2ifwm9axdf8q1ry"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "gioui.org"))
;;     (propagated-inputs
;;       `(("go-gioui-org-shader" ,go-gioui-org-shader)
;;         ("go-gioui-org-cpu" ,go-gioui-org-cpu)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
;;     (home-page "https://gioui.org")
;;     (synopsis "Gio -")
;;     (description
;;       "Immediate mode GUI programs in Go for Android, iOS, macOS, Linux,
;; FreeBSD, OpenBSD, Windows, and WebAssembly (experimental).")
;;     (license license:expat)))

;; (define-public go-github-com-ajstarks-svgo
;;   (package
;;     (name "go-github-com-ajstarks-svgo")
;;     (version "0.0.0-20211024235047-1546f124cd8b")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ajstarks/svgo")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1h0y8c1cw49lm0f324kvgvwc24q6r64pzzzrqpfgp2wd9ljszfnd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ajstarks/svgo"))
;;     (propagated-inputs
;;       `(("go-honnef-co-go-tools" ,go-honnef-co-go-tools)
;;         ("go-github-com-ajstarks-deck-generate"
;;          ,go-github-com-ajstarks-deck-generate)))
;;     (home-page "https://github.com/ajstarks/svgo")
;;     (synopsis "SVGo: A Go library for SVG generation")
;;     (description
;;       "Package svg generates SVG as defined by the Scalable Vector Graphics 1.1 Specification (<@url{http://www.w3.org/TR/SVG11/,http://www.w3.org/TR/SVG11/}>).
;; Output goes to the specified io.Writer.
;; ")
;;     (license license:cc-by4.0)))

;; (define-public go-github-com-go-fonts-dejavu
;;   (package
;;     (name "go-github-com-go-fonts-dejavu")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-fonts/dejavu")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1kax2sxfn30p30q0l14bi9rdmidr120hdhv2fkcjjsac1ngxvj39"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-fonts/dejavu"))
;;     (propagated-inputs `(("go-golang-org-x-image" ,go-golang-org-x-image)))
;;     (home-page "https://github.com/go-fonts/dejavu")
;;     (synopsis "dejavu")
;;     (description "Package dejavu holds TTF data of the DejaVu fonts.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-fonts-latin-modern
;;   (package
;;     (name "go-github-com-go-fonts-latin-modern")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-fonts/latin-modern")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mwkvg5y8pn8l1yhq3m522qqvfdykn85b01rkmp4wgk9hz53796l"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-fonts/latin-modern"))
;;     (propagated-inputs `(("go-golang-org-x-image" ,go-golang-org-x-image)))
;;     (home-page "https://github.com/go-fonts/latin-modern")
;;     (synopsis "latin-modern")
;;     (description "Package lm holds TTF data of the Latin Modern fonts.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-fonts-liberation
;;   (package
;;     (name "go-github-com-go-fonts-liberation")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-fonts/liberation")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0232xql47b0nkv86kx6qa38z9mz5r7lza9gdhd1baf1kralyh2rd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-fonts/liberation"))
;;     (propagated-inputs `(("go-golang-org-x-image" ,go-golang-org-x-image)))
;;     (home-page "https://github.com/go-fonts/liberation")
;;     (synopsis "liberation")
;;     (description
;;       "Package liberation holds TTF data of the Liberation fonts.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-fonts-stix
;;   (package
;;     (name "go-github-com-go-fonts-stix")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-fonts/stix")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16bcvp9hz8fwyjwxxyl563zr4g9m8jxwaqd3sqcnk9vzcnrcnk44"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-fonts/stix"))
;;     (propagated-inputs `(("go-golang-org-x-image" ,go-golang-org-x-image)))
;;     (home-page "https://github.com/go-fonts/stix")
;;     (synopsis "stix")
;;     (description "Package stix holds TTF data of the STIX2 fonts.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-latex-latex
;;   (package
;;     (name "go-github-com-go-latex-latex")
;;     (version "0.0.0-20210823091927-c0d11ff05a81")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-latex/latex")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1gp9fjh19nhwfml8js07y22qfiqx5zgzx1xa2nzsjl221njc6yl7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-latex/latex"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-github-com-golang-freetype" ,go-github-com-golang-freetype)
;;         ("go-github-com-go-pdf-fpdf" ,go-github-com-go-pdf-fpdf)
;;         ("go-github-com-go-fonts-stix" ,go-github-com-go-fonts-stix)
;;         ("go-github-com-go-fonts-liberation"
;;          ,go-github-com-go-fonts-liberation)
;;         ("go-github-com-go-fonts-latin-modern"
;;          ,go-github-com-go-fonts-latin-modern)
;;         ("go-github-com-go-fonts-dejavu" ,go-github-com-go-fonts-dejavu)
;;         ("go-github-com-fogleman-gg" ,go-github-com-fogleman-gg)))
;;     (home-page "https://github.com/go-latex/latex")
;;     (synopsis "latex")
;;     (description
;;       "Package latex provides types and functions to work with LaTeX.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-boombuler-barcode
;;   (package
;;     (name "go-github-com-boombuler-barcode")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/boombuler/barcode")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0v4ypgh3xarzfpgys838mgkfabqacbjklhf4kfqnycs0v0anvnlr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/boombuler/barcode"))
;;     (home-page "https://github.com/boombuler/barcode")
;;     (synopsis "Introduction")
;;     (description
;;       "This is a package for GO which can be used to create different types of barcodes.")
;;     (license license:expat)))

;; (define-public go-github-com-phpdave11-gofpdi
;;   (package
;;     (name "go-github-com-phpdave11-gofpdi")
;;     (version "1.0.13")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/phpdave11/gofpdi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01r8a3k2d48fxmhyvix0ry2dc1z5xankd14yxlm496a26vfnc9nq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/phpdave11/gofpdi"))
;;     (propagated-inputs
;;       `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)))
;;     (home-page "https://github.com/phpdave11/gofpdi")
;;     (synopsis "gofpdi")
;;     (description
;;       "gofpdi allows you to import an existing PDF into a new PDF.  The following PDF generation libraries are supported:")
;;     (license license:expat)))

;; (define-public go-github-com-phpdave11-gofpdf
;;   (package
;;     (name "go-github-com-phpdave11-gofpdf")
;;     (version "1.4.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/phpdave11/gofpdf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1cfssmcv55p37zni9f5c4yn2jwd6fvqwml45f1s9gvj32kbhxvxg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/phpdave11/gofpdf"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-github-com-ruudk-golang-pdf417"
;;          ,go-github-com-ruudk-golang-pdf417)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-phpdave11-gofpdi" ,go-github-com-phpdave11-gofpdi)
;;         ("go-github-com-boombuler-barcode" ,go-github-com-boombuler-barcode)))
;;     (home-page "https://github.com/phpdave11/gofpdf")
;;     (synopsis "GoFPDF document generator")
;;     (description
;;       "Package gofpdf implements a PDF document generator with high level
;; support for text, drawing and images.
;; ")
;;     (license license:expat)))

;; (define-public go-github-com-ruudk-golang-pdf417
;;   (package
;;     (name "go-github-com-ruudk-golang-pdf417")
;;     (version "0.0.0-20201230142125-a7e3863a1245")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ruudk/golang-pdf417")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "02zq0yk89567sbgck1ynywyycj8rd5s0hs1l81s2jz4sbfx44ac6"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ruudk/golang-pdf417"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-phpdave11-gofpdf" ,go-github-com-phpdave11-gofpdf)
;;         ("go-github-com-boombuler-barcode" ,go-github-com-boombuler-barcode)))
;;     (home-page "https://github.com/ruudk/golang-pdf417")
;;     (synopsis "PDF417 barcodes in Golang")
;;     (description
;;       "This is a port of @url{https://github.com/ihabunek/pdf417-php,https://github.com/ihabunek/pdf417-php}")
;;     (license license:expat)))

;; (define-public go-github-com-go-pdf-fpdf
;;   (package
;;     (name "go-github-com-go-pdf-fpdf")
;;     (version "0.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-pdf/fpdf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zyn1wlwmkp1lp7dbxz3dfb0jjmr2djaf7s9i8lablq8r8j7rw7l"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-pdf/fpdf"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-github-com-ruudk-golang-pdf417"
;;          ,go-github-com-ruudk-golang-pdf417)
;;         ("go-github-com-phpdave11-gofpdi" ,go-github-com-phpdave11-gofpdi)
;;         ("go-github-com-boombuler-barcode" ,go-github-com-boombuler-barcode)))
;;     (home-page "https://github.com/go-pdf/fpdf")
;;     (synopsis "GoFPDF document generator")
;;     (description
;;       "Package fpdf implements a PDF document generator with high level
;; support for text, drawing and images.
;; ")
;;     (license license:expat)))

;; (define-public go-rsc-io-pdf
;;   (package
;;     (name "go-rsc-io-pdf")
;;     (version "0.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rsc/pdf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01qjjwa8nn5a2jzd360xqg5zc8s0i2fpwcn2w2g6y2jgn9wl8x84"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "rsc.io/pdf"))
;;     (home-page "https://rsc.io/pdf")
;;     (synopsis #f)
;;     (description "Package pdf implements reading of PDF files.")
;;     (license license:bsd-3)))

;; (define-public go-gonum-org-v1-plot
;;   (package
;;     (name "go-gonum-org-v1-plot")
;;     (version "0.10.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gonum/plot")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0w5j5ng7nxm9r0xj76g89s38zgcj5c83sdp2f32nyyg5x5s1g1xa"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "gonum.org/v1/plot"
;;        #:unpack-path "github.com/gonum/plot"))
;;     (propagated-inputs
;;       `(("go-rsc-io-pdf" ,go-rsc-io-pdf)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-go-pdf-fpdf" ,go-github-com-go-pdf-fpdf)
;;         ("go-github-com-go-latex-latex" ,go-github-com-go-latex-latex)
;;         ("go-github-com-go-fonts-liberation"
;;          ,go-github-com-go-fonts-liberation)
;;         ("go-github-com-go-fonts-latin-modern"
;;          ,go-github-com-go-fonts-latin-modern)
;;         ("go-github-com-fogleman-gg" ,go-github-com-fogleman-gg)
;;         ("go-github-com-ajstarks-svgo" ,go-github-com-ajstarks-svgo)
;;         ("go-gioui-org" ,go-gioui-org)))
;;     (home-page "https://github.com/gonum/plot")
;;     (synopsis #f)
;;     (description #f)
;;     (license #f)))



;; (define-public go-github-com-sirupsen-logrus
;;   (package
;;     (name "go-github-com-sirupsen-logrus")
;;     (version "1.8.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/sirupsen/logrus")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0rvqzic2zz7fpxyizmqxwmhv1m52ii9bgxnqa6km8wsa0l08wh42"))))
;;     (build-system go-build-system)
;;     (propagated-inputs
;;      `(("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;        ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;        ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;        ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;        ("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (arguments
;;      '(#:import-path "github.com/sirupsen/logrus"))
;;     (home-page "https://github.com/sirupsen/logrus")
;;     (synopsis "Structured, pluggable logging for Go")
;;     (description "Logrus is a structured logger for Go, completely API
;; compatible with the standard library logger.")
;;     (license license:expat)))

;; (define-public go-github-com-klauspost-compress
;;   (package
;;     (name "go-github-com-klauspost-compress")
;;     (version "1.13.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/klauspost/compress")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32
;;             "0ydnf9rizlhm8rilh14674qqx272sbwbkjx06xn9pqvy6mmn2r3r"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/klauspost/compress"
;;        #:phases
;;        (modify-phases %standard-phases
;;          (add-before 'reset-gzip-timestamps 'fix-permissions
;;            (lambda* (#:key outputs #:allow-other-keys)
;;              ;; Provide write permissions on gzip files so that
;;              ;; reset-gzip-timestamps has sufficient permissions.
;;              (for-each make-file-writable
;;                        (find-files (assoc-ref outputs "out") ".gz$")))))))
;;     (propagated-inputs
;;      `(("go-github-com-golang-snappy" ,go-github-com-golang-snappy)))
;;     (home-page "https://github.com/klauspost/compress")
;;     (synopsis "Go compression library")
;;     (description "@code{compress} provides various compression algorithms.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-mitchellh-go-wordwrap
;;   (package
;;     (name "go-github-com-mitchellh-go-wordwrap")
;;     (version "1.0.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/mitchellh/go-wordwrap")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "12imq66hgj8q9ii2xqdy8apc0icphh6yimjb0div1pvl3s9gn83y"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/mitchellh/go-wordwrap"))
;;     (propagated-inputs
;;      `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://github.com/mitchellh/go-wordwrap")
;;     (synopsis "Go library for word-wrapping strings")
;;     (description
;;      "This Go library automatically wraps words onto multiple lines.  It's
;; primary goal is to format command-line output, but of course word wrapping is a
;; generally useful thing to do.")
;;     (license license:expat)))

;; (define-public go-golang-org-x-time
;;   (package
;;     (name "go-golang-org-x-time")
;;     (version "0.0.0-20210723032227-1f47c861a9ac")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/time")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1drd4fww92m6k12bh90c59l85rl1j48vgxgax1ki3138gf3iaa33"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "golang.org/x/time"))
;;     (home-page "https://golang.org/x/time")
;;     (synopsis "Go Time")
;;     (description "This repository provides supplementary Go time packages.")
;;     (license license:bsd-3)))




;; (define-public go-golang-org-x-mod
;;   (package
;;     (name "go-golang-org-x-mod")
;;     (version "0.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/mod")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11ck0f35pa91hhxpf98igmj6gg0lms3b3pjm1y7sna1zz52m8f09"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "golang.org/x/mod"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://golang.org/x/mod")
;;     (synopsis "mod")
;;     (description
;;       "This repository holds packages for writing tools
;; that work directly with Go module mechanics.
;; That is, it is for direct manipulation of Go modules themselves.")
;;     (license license:bsd-3)))



;; (define-public go-google-golang-org-grpc-cmd-protoc-gen-go-grpc
;;   (package
;;     (name "go-google-golang-org-grpc-cmd-protoc-gen-go-grpc")
;;     (version "1.41.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/grpc/grpc-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10a0n2lmvl8zqhcswz3sjyqil0sk0mvp892d04lfnq61wq1ssgsn"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "google.golang.org/grpc"
;;        #:import-path "google.golang.org/grpc/cmd/protoc-gen-go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-glog" ,go-github-com-golang-glog)
;;         ("go-github-com-envoyproxy-go-control-plane"
;;          ,go-github-com-envoyproxy-go-control-plane)
;;         ("go-github-com-cncf-udpa-go" ,go-github-com-cncf-udpa-go)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)))
;;     (home-page "https://google.golang.org/grpc")
;;     (synopsis "gRPC-Go")
;;     (description "Package grpc implements an RPC system called gRPC.
;; ")
;;     (license license:asl2.0)))



;; (define-public go-github-com-gorilla-mux
;;   (package
;;     (name "go-github-com-gorilla-mux")
;;     (version "1.8.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/gorilla/mux")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "18f0q9qxgq1yh4ji07mqhiydfcwvi56z9d775v7dc7yckj33kpdk"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/gorilla/mux"))
;;     (home-page "https://github.com/gorilla/mux")
;;     (synopsis "URL router and dispatcher for Go")
;;     (description
;;      "Gorilla/Mux implements a request router and dispatcher for matching
;; incoming requests with their respective handler.")
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-yaml-v3
;;   (package
;;     (name "go-gopkg-in-yaml-v3")
;;     (version "3.0.0-20210107192922-496545a6307b")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/yaml.v3")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06f4lnrp494wqaygv09dggr2dwf3z2bawqhnlnnwiamg5y787k4g"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "gopkg.in/yaml.v3" #:unpack-path "gopkg.in/yaml.v3"))
;;     (propagated-inputs `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)))
;;     (home-page "https://gopkg.in/yaml.v3")
;;     (synopsis "YAML support for the Go language")
;;     (description "Package yaml implements YAML support for the Go language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-kr-text
;;   (package
;;     (name "go-github-com-kr-text")
;;     (version "0.1.0")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/kr/text")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "1gm5bsl01apvc84bw06hasawyqm4q84vx1pm32wr9jnd7a8vjgj1"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/kr/text"))
;;     (synopsis "Text formatting in Go")
;;     (description "This package provides a text formatting functions in Go.")
;;     (home-page "https://github.com/kr/text")
;;     (license license:expat)))

;; ;;
;; (define-public go-modernc-org-internal
;;   (package
;;     (name "go-modernc-org-internal")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/internal")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1fgcv0c7xvdihzb76ja5qa5wjqarywxxhzi8dx2bsy8ch6njx2wz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/internal"))
;;     (propagated-inputs
;;       `(("go-modernc-org-mathutil" ,go-modernc-org-mathutil)
;;         ("go-modernc-org-fileutil" ,go-modernc-org-fileutil)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)))
;;     (home-page "https://modernc.org/internal")
;;     (synopsis "internal")
;;     (description "Things that cannot be imported by 3rd party packages.")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-ir
;;   (package
;;     (name "go-modernc-org-ir")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/ir")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0n2jql990xwgjfhyjqnq6cmras0darzn9cyvnz3cv974vc1p818i"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/ir"))
;;     (home-page "https://modernc.org/ir")
;;     (synopsis "ir")
;;     (description
;;       "Package ir implements intermediate representation of compiled programs.
;; (Work In Progress)
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-token
;;   (package
;;     (name "go-modernc-org-token")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/token")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gs2231h6i7xmsadyxqcqivkki74bsxwq2n7h0nkbm96fsmgxrd7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/token"))
;;     (home-page "https://modernc.org/token")
;;     (synopsis "token")
;;     (description
;;       "Package token is variant of the stdlib package token with types FileSet and
;; Token removed.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-cc
;;   (package
;;     (name "go-modernc-org-cc")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/cc")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "09vv400zpb6cbqjz74lvawin16v9mp97gkk2plbpbfmzjda0n4lz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/cc"))
;;     (propagated-inputs
;;       `(("go-modernc-org-xc" ,go-modernc-org-xc)
;;         ("go-modernc-org-token" ,go-modernc-org-token)
;;         ("go-modernc-org-strutil" ,go-modernc-org-strutil)
;;         ("go-modernc-org-mathutil" ,go-modernc-org-mathutil)
;;         ("go-modernc-org-ir" ,go-modernc-org-ir)
;;         ("go-modernc-org-internal" ,go-modernc-org-internal)
;;         ("go-modernc-org-golex" ,go-modernc-org-golex)
;;         ("go-github-com-remyoudompheng-bigfft"
;;          ,go-github-com-remyoudompheng-bigfft)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-dustin-go-humanize"
;;          ,go-github-com-dustin-go-humanize)))
;;     (home-page "https://modernc.org/cc")
;;     (synopsis "cc")
;;     (description "Package cc is a C99 compiler front end.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-lex
;;   (package
;;     (name "go-modernc-org-lex")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/lex")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10nxw9ga1zfzcxlqmynbnwwk7mprx61s41jsw7hpf3v1if63yjm2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/lex"))
;;     (propagated-inputs
;;       `(("go-modernc-org-lexer" ,go-modernc-org-lexer)
;;         ("go-modernc-org-fileutil" ,go-modernc-org-fileutil)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
;;     (home-page "https://modernc.org/lex")
;;     (synopsis #f)
;;     (description
;;       "Package lex provides support for a *nix (f)lex like tool on .l sources.
;; The syntax is similar to a subset of (f)lex, see also: @url{http://flex.sourceforge.net/manual/Format.html#Format,http://flex.sourceforge.net/manual/Format.html#Format}
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-fileutil
;;   (package
;;     (name "go-modernc-org-fileutil")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/fileutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ailb6np58qyk12qqxwm8v2bpqcy95120d0ahyx31sl8qnc92khy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/fileutil"))
;;     (home-page "https://modernc.org/fileutil")
;;     (synopsis #f)
;;     (description "Package fileutil collects some file utility functions.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-lexer
;;   (package
;;     (name "go-modernc-org-lexer")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/lexer")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00nlpb76ja844ifpmhxxvgyv7r5dvv6sg1af9wiwwz89nh7nmwmx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/lexer"))
;;     (propagated-inputs
;;       `(("go-modernc-org-fileutil" ,go-modernc-org-fileutil)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
;;     (home-page "https://modernc.org/lexer")
;;     (synopsis #f)
;;     (description
;;       "Package lexer provides generating actionless scanners (lexeme recognizers) at run time.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-golex
;;   (package
;;     (name "go-modernc-org-golex")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/golex")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1iv08q3c6rj39v712b3g76dj28xjip1a09vdawsx6daa1dcs1gdc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/golex"))
;;     (propagated-inputs
;;       `(("go-modernc-org-lexer" ,go-modernc-org-lexer)
;;         ("go-modernc-org-lex" ,go-modernc-org-lex)
;;         ("go-modernc-org-fileutil" ,go-modernc-org-fileutil)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
;;     (home-page "https://modernc.org/golex")
;;     (synopsis #f)
;;     (description
;;       "Golex is a lex/flex like (not fully POSIX lex compatible) utility.
;; It renders .l formated data (@url{http://flex.sourceforge.net/manual/Format.html#Format,http://flex.sourceforge.net/manual/Format.html#Format}) to Go source code.
;; The .l data can come from a file named in a command line argument.
;; If no non-opt args are given, golex reads stdin.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-github-com-remyoudompheng-bigfft
;;   (package
;;     (name "go-github-com-remyoudompheng-bigfft")
;;     (version "0.0.0-20200410134404-eec4a21b6bb0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/remyoudompheng/bigfft")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0x01k3caqmyjivfgydkhg2m4y823xlhnzknp0xdlapap0rn298yp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/remyoudompheng/bigfft"))
;;     (home-page "https://github.com/remyoudompheng/bigfft")
;;     (synopsis #f)
;;     (description
;;       "Package bigfft implements multiplication of big.Int using FFT.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-mathutil
;;   (package
;;     (name "go-modernc-org-mathutil")
;;     (version "1.4.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/mathutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0xzs3a29djlqfqmdjfblgv1adb4v11z6557mprx6d92a1byamdwv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/mathutil"))
;;     (propagated-inputs
;;       `(("go-github-com-remyoudompheng-bigfft"
;;          ,go-github-com-remyoudompheng-bigfft)))
;;     (home-page "https://modernc.org/mathutil")
;;     (synopsis #f)
;;     (description
;;       "Package mathutil provides utilities supplementing the standard 'math' and
;; 'math/rand' packages.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-strutil
;;   (package
;;     (name "go-modernc-org-strutil")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/strutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1fql70xqpa0v865j6ikj8nz6vmbdwfkpbsnxzz9hk721xzaz8fl0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/strutil"))
;;     (propagated-inputs `(("go-modernc-org-mathutil" ,go-modernc-org-mathutil)))
;;     (home-page "https://modernc.org/strutil")
;;     (synopsis #f)
;;     (description
;;       "Package strutil collects utils supplemental to the standard strings package.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-modernc-org-xc
;;   (package
;;     (name "go-modernc-org-xc")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gitlab.com/cznic/xc")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00hrgpq6xwfzbkgdma5q1ds53r9fzyhhk4aybcaqjfzm2ps7cc09"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "modernc.org/xc"))
;;     (home-page "https://modernc.org/xc")
;;     (synopsis "xc")
;;     (description
;;       "Package xc provides cross language compiler support/utility stuff.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-gonum-org-v1-netlib
;;   (package
;;     (name "go-gonum-org-v1-netlib")
;;     (version "0.0.0-20210927171344-7274ea1d1842")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gonum/netlib")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1r1vyb3zbxnqxkv1pyj6jqd8xs7rwp3sm234rcip91zb39inj2jh"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "gonum.org/v1/netlib"
;;        #:unpack-path "github.com/gonum/netlib"))
;;     (propagated-inputs
;;       `(("go-modernc-org-xc" ,go-modernc-org-xc)
;;         ("go-modernc-org-strutil" ,go-modernc-org-strutil)
;;         ("go-modernc-org-mathutil" ,go-modernc-org-mathutil)
;;         ("go-modernc-org-golex" ,go-modernc-org-golex)
;;         ("go-modernc-org-cc" ,go-modernc-org-cc)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-remyoudompheng-bigfft"
;;          ,go-github-com-remyoudompheng-bigfft)))
;;     (home-page "https://github.com/gonum/netlib")
;;     (synopsis "Gonum NETLIB")
;;     (description
;;       "Wrapper packages providing an interface to the NETLIB C BLAS and LAPACKE implementations.")
;;     (license license:bsd-3)))

;; (define-public go-gonum-org-v1-gonum
;;   (package
;;     (name "go-gonum-org-v1-gonum")
;;     (version "0.0.0-20210927171344-7274ea1d1842")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gonum/gonum")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1r1vyb3zbxnqxkv1pyj6jqd8xs7rwp3sm234rcip91zb39inj2jh"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "gonum.org/v1/gonum"
;;        #:unpack-path "github.com/gonum/gonum"))
;;     (propagated-inputs
;;       `(("go-modernc-org-xc" ,go-modernc-org-xc)
;;         ("go-modernc-org-strutil" ,go-modernc-org-strutil)
;;         ("go-modernc-org-mathutil" ,go-modernc-org-mathutil)
;;         ("go-modernc-org-golex" ,go-modernc-org-golex)
;;         ("go-modernc-org-cc" ,go-modernc-org-cc)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-remyoudompheng-bigfft"
;;          ,go-github-com-remyoudompheng-bigfft)))
;;     (home-page "https://github.com/gonum/netlib")
;;     (synopsis "Gonum NETLIB")
;;     (description
;;       "Wrapper packages providing an interface to the NETLIB C BLAS and LAPACKE implementations.")
;;     (license license:bsd-3)))


;; ;;

;; (define-public go-go-uber-org-zap
;;   (package
;;     (name "go-go-uber-org-zap")
;;     (version "1.16.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/uber-go/zap")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "05ix5wg1r8pgi7fb6084lg4x7mrkvzkh1nxa7zj337w5b9xj0myr"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "go.uber.org/zap"
;;        #:tests? #f)) ; TODO: Fix tests
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;        ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;        ("go-honnef-co-go-tools" ,go-honnef-co-go-tools)))
;;     (propagated-inputs
;;      `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;        ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
;;        ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;        ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://go.uber.org/zap")
;;     (synopsis "Logging library for Go")
;;     (description
;;      "This package provides a library for fast, structured, leveled logging in
;; Go.")
;;     (license license:expat)))


;; (define-public go-github-com-spf13-afero
;;   (package
;;     (name "go-github-com-spf13-afero")
;;     (version "1.2.2")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/spf13/afero")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0j9r65qgd58324m85lkl49vk9dgwd62g7dwvkfcm3k6i9dc555a9"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/spf13/afero"))
;;     (propagated-inputs
;;      `(("golang.org/x/text" ,go-golang-org-x-text)))
;;     (home-page "https://github.com/spf13/afero")
;;     (synopsis "File system abstraction for Go")
;;     (description
;;      "This package provides a file system abstraction for Go.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-mattn-go-colorable
;;   (package
;;     (name "go-github-com-mattn-go-colorable")
;;     (version "0.1.8")
;;     (home-page "https://github.com/mattn/go-colorable")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url home-page)
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0q34zqwbnls72md8q8mhj368s7p3i4xspvs3rk8fs76s0pn7dr2l"))))
;;     (build-system go-build-system)
;;     (native-inputs
;;      `(("go-github-com-mattn-go-isatty"
;;         ,go-github-com-mattn-go-isatty)))
;;     (arguments
;;      '(#:import-path "github.com/mattn/go-colorable"))
;;     (synopsis "Handle ANSI color escapes on Windows")
;;     (description "This package provides @code{colorable}, a module that
;; makes it possible to handle ANSI color escapes on Windows.")
;;     (license license:expat)))

;; (define-public go-github-com-prometheus-client-golang
;;   (package
;;     (name "go-github-com-prometheus-client-golang")
;;     (version "1.11.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/prometheus/client_golang")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1xdspykw6wgp0bv7s1r7gklvhr5jfmi59n8bg8zhy3vi0yi902y3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/prometheus/client_golang"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-prometheus-procfs" ,go-github-com-prometheus-procfs)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)
;;         ("go-github-com-beorn7-perks" ,go-github-com-beorn7-perks)))
;;     (home-page "https://github.com/prometheus/client_golang")
;;     (synopsis "Prometheus Go client library")
;;     (description
;;       "This is the @url{http://golang.org,Go} client library for
;; @url{http://prometheus.io,Prometheus}.  It has two separate parts, one for
;; instrumenting application code, and one for creating clients that talk to the
;; Prometheus HTTP API.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-google-gofuzz
;;   (let ((commit "fd52762d25a41827db7ef64c43756fd4b9f7e382")
;;         (revision "0"))
;;     (package
;;       (name "go-github-com-google-gofuzz")
;;       (version (git-version "0.0.0" revision commit))
;;       (source
;;        (origin
;;          (method git-fetch)
;;          (uri (git-reference
;;                (url "https://github.com/google/gofuzz")
;;                (commit commit)))
;;          (file-name (git-file-name name version))
;;          (sha256
;;           (base32
;;            "1yxmmr73h0lq7ryf3q9a7pcm2x5xrg4d5bxkq8n5pxwxwyq26kw8"))))
;;       (build-system go-build-system)
;;       (arguments
;;        '(#:import-path "github.com/google/gofuzz"))
;;       (home-page "https://github.com/google/gofuzz")
;;       (synopsis "Fuzz testing library for Go")
;;       (description "Gofuzz is a library for populationg Go objects with random
;; values for the purpose of fuzz testing.")
;;       (license license:asl2.0))))

;; (define-public go-github-com-kr-pretty
;;   (package
;;     (name "go-github-com-kr-pretty")
;;     (version "0.2.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/kr/pretty")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0vzfz06y9q8gs2nxx0kys0591vzp78k0fvpb8digi5n15h3b25hy"))))
;;     (build-system go-build-system)
;;     (propagated-inputs
;;      `(("go-github-com-kr-text" ,go-github-com-kr-text)))
;;     (arguments
;;      '(#:import-path "github.com/kr/pretty"))
;;     (synopsis "Pretty printer for Go values")
;;     (description "This package provides a pretty printer for Go values.")
;;     (home-page "https://github.com/kr/pretty")
;;     (license license:expat)))

;; (define-public go-github-com-stretchr-objx
;;   (package
;;     (name "go-github-com-stretchr-objx")
;;     (version "0.2.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/stretchr/objx")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0pcdvakxgddaiwcdj73ra4da05a3q4cgwbpm2w75ycq4kzv8ij8k"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/stretchr/objx"))
;;     (home-page "https://github.com/stretchr/objx")
;;     (synopsis "Go package for dealing with maps, slices, JSON and other data")
;;     (description "This package provides a Go library for dealing with maps,
;; slices, JSON and other data.")
;;     (license license:expat)))

;; (define-public go-go-uber-org-multierr
;;   (package
;;     (name "go-go-uber-org-multierr")
;;     (version "1.6.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/uber-go/multierr")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "162941s8f6a9x2w04qm4qa3zz0zylwag9149hywrj9ibp2nzcsqz"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "go.uber.org/multierr"))
;;     (native-inputs
;;      `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (propagated-inputs
;;      `(("go-go-uber-org-atomic" ,go-go-uber-org-atomic)))
;;     (home-page "https://go.uber.org/multierr")
;;     (synopsis "Error combination for Go")
;;     (description
;;      "@code{multierr} allows combining one or more Go errors together.")
;;     (license license:expat)))

;; (define-public go-github-com-davecgh-go-spew
;;   (package
;;     (name "go-github-com-davecgh-go-spew")
;;     (version "1.1.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/davecgh/go-spew")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0hka6hmyvp701adzag2g26cxdj47g21x6jz4sc6jjz1mn59d474y"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:unpack-path "github.com/davecgh/go-spew"
;;        #:import-path "github.com/davecgh/go-spew/spew"))
;;     (home-page "https://github.com/davecgh/go-spew")
;;     (synopsis "Deep pretty printer for Go data structures to aid in debugging")
;;     (description "Package @command{spew} implements a deep pretty printer
;; for Go data structures to aid in debugging.

;; A quick overview of the additional features spew provides over the built-in printing facilities for Go data types are as follows:

;; @itemize
;; @item Pointers are dereferenced and followed.
;; @item Circular data structures are detected and handled properly.
;; @item Custom Stringer/error interfaces are optionally invoked, including on
;; unexported types.
;; @item Custom types which only implement the Stringer/error interfaces via a
;; pointer receiver are optionally invoked when passing non-pointer variables.
;; @item Byte arrays and slices are dumped like the hexdump -C command which
;; includes offsets, byte values in hex, and ASCII output (only when using Dump
;; style).
;; @end itemize\n")
;;     (license license:isc)))

;; (define-public go-github-com-op-go-logging
;;   (package
;;     (name "go-github-com-op-go-logging")
;;     (version "1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri
;;         (git-reference
;;          (url "https://github.com/op/go-logging")
;;          (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32 "01a6lkpj5p82gplddh55az194s9y3014p4j8x4zc8yv886z9c8gn"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:tests? #f ; ERROR: incorrect callpath: String.rec...a.b.c.Info.
;;        #:import-path "github.com/op/go-logging"))
;;     (home-page "https://github.com/op/go-logging")
;;     (synopsis "Go logging library")
;;     (description "Go-Logging implements a logging infrastructure for Go.  Its
;; output format is customizable and supports different logging backends like
;; syslog, file and memory.  Multiple backends can be utilized with different log
;; levels per backend and logger.")
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-check-v1
;;   (package
;;     (name "go-gopkg-in-check-v1")
;;     (version "1.0.0-20201130134442-10cb98267c6c")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/go-check/check")
;;              (commit (go-version->git-ref version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "1jwxndf8rsyx0fgrp47d99rp55yzssmryb92jfj3yf7zd8rjjljn"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "gopkg.in/check.v1"))
;;     (propagated-inputs
;;      `(("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
;;     (home-page "https://gopkg.in/check.v1")
;;     (synopsis "Test framework for the Go language")
;;     (description "This package provides a test library for the Go language.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-google-uuid
;;   (package
;;     (name "go-github-com-google-uuid")
;;     (version "1.1.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/google/uuid")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0hfxcf9frkb57k6q0rdkrmnfs78ms21r1qfk9fhlqga2yh5xg8zb"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/google/uuid"))
;;     (home-page "https://github.com/google/uuid/")
;;     (synopsis "Generate and inspect UUIDs based on RFC 4122 and DCE 1.1")
;;     (description "The uuid package generates and inspects UUIDs based on RFC
;; 4122 and DCE 1.1: Authentication and Security Services.")
;;     (license license:bsd-3)))

;; (define-public go-golang-org-x-text
;;   (package
;;     (name "go-golang-org-x-text")
;;     (version "0.3.2")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://go.googlesource.com/text")
;;                     (commit (string-append "v" version))))
;;               (file-name (string-append "go.googlesource.com-text-"
;;                                         version "-checkout"))
;;               (sha256
;;                (base32
;;                 "0flv9idw0jm5nm8lx25xqanbkqgfiym6619w575p7nrdh0riqwqh"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "golang.org/x/text"
;;        ; Source-only package
;;        #:tests? #f
;;        #:phases
;;        (modify-phases %standard-phases
;;          (delete 'build))))
;;     (synopsis "Supplemental Go text processing libraries")
;;     (description "This package provides supplemental Go libraries for text
;;     processing.")
;;     (home-page "https://go.googlesource.com/text")
;;     (license license:bsd-3)))

;; (define-public go-golang-org-x-lint
;;   (let ((commit "83fdc39ff7b56453e3793356bcff3070b9b96445")
;;         (revision "0"))
;;     (package
;;       (name "go-golang-org-x-lint")
;;       (version (git-version "0.0.0" revision commit))
;;       (source
;;        (origin
;;          (method git-fetch)
;;          (uri (git-reference
;;                (url "https://go.googlesource.com/lint")
;;                (commit commit)))
;;          (file-name (git-file-name name version))
;;          (sha256
;;           (base32 "0ms3rs5hvpnm9bxbr5f9743i7hn2bbmqdmvzxq6nmi0f24ypv1l3"))))
;;       (build-system go-build-system)
;;       (arguments
;;        '(#:import-path "golang.org/x/lint"
;;          #:tests? #f)) ;; TODO: Fix tests
;;       (propagated-inputs
;;        `(("go-golang-org-x-tools" ,go-golang-org-x-tools)))
;;       (home-page "https://golang.org/x/lint")
;;       (synopsis "Linter for Go source code")
;;       (description
;;        "This is a linter for Go source code.  Unlike gofmt, it doesn't
;; reformat the source code, it only prints out style mistakes.")
;;       (license license:bsd-3))))

;; (define-public go-github-com-mitchellh-mapstructure
;;   (package
;;     (name "go-github-com-mitchellh-mapstructure")
;;     (version "1.1.2") ;; NOTE: Updating to 1.3.1 breaks tests on viper-1.7.0
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/mitchellh/mapstructure")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "03bpv28jz9zhn4947saqwi328ydj7f6g6pf1m2d4m5zdh5jlfkrr"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/mitchellh/mapstructure"))
;;     (home-page "https://github.com/mitchellh/mapstructure")
;;     (synopsis "Go library for decoding generic map values")
;;     (description "Go library for decoding generic map values")
;;     (license license:expat)))

;; (define-public go-golang-org-x-sync
;;   (let ((commit "6e8e738ad208923de99951fe0b48239bfd864f28")
;;         (revision "1"))
;;     (package
;;       (name "go-golang-org-x-sync")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/sync")
;;                       (commit commit)))
;;                 (file-name (git-file-name name version))
;;                 (sha256
;;                  (base32
;;                   "1avk27pszd5l5df6ff7j78wgla46ir1hhy2jwfl9a3c0ys602yx9"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "golang.org/x/sync"
;;          #:tests? #f
;;          ;; Source-only package
;;          #:phases
;;          (modify-phases %standard-phases
;;            (delete 'build))))
;;       (synopsis "Additional Go concurrency primitives")
;;       (description "This package provides Go concurrency primitives in addition
;; to the ones provided by the language and “sync” and “sync/atomic”
;; packages.")
;;       (home-page "https://go.googlesource.com/sync/")
;;       (license license:bsd-3))))

;; (define-public go-github-com-pmezard-go-difflib
;;   (package
;;     (name "go-github-com-pmezard-go-difflib")
;;     (version "1.0.0")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/pmezard/go-difflib")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "0c1cn55m4rypmscgf0rrb88pn58j3ysvc2d0432dp3c6fqg6cnzw"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/pmezard/go-difflib/difflib"
;;        #:unpack-path "github.com/pmezard/go-difflib/"))
;;     (home-page "https://github.com/pmezard/go-difflib")
;;     (synopsis "Go diff implementation")
;;     (description "This package provides unified and context-aware diffs in Go.")
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-yaml-v2
;;   (package
;;     (name "go-gopkg-in-yaml-v2")
;;     (version "2.2.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/yaml.v2.git")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;          (base32
;;           "01wj12jzsdqlnidpyjssmj0r4yavlqy7dwrg7adqd8dicjc4ncsa"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "gopkg.in/yaml.v2"))
;;     (native-inputs
;;      `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)))
;;     (home-page "https://gopkg.in/yaml.v2")
;;     (synopsis "YAML reader and writer for the Go language")
;;     (description
;;      "This package provides a Go library for encode and decode YAML
;; values.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-shurcool-sanitized-anchor-name
;;   (package
;;     (name "go-github-com-shurcool-sanitized-anchor-name")
;;     (version "1.0.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/shurcooL/sanitized_anchor_name")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "1gv9p2nr46z80dnfjsklc6zxbgk96349sdsxjz05f3z6wb6m5l8f"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/shurcooL/sanitized_anchor_name"))
;;     (home-page "https://github.com/shurcooL/sanitized_anchor_name")
;;     (synopsis "Create sanitized anchor names")
;;     (description "This package provides a Go program for creating sanitized
;; anchor names.")
;;     (license license:expat)))

;; (define-public go-golang-org-x-term
;;   (package
;;     (name "go-golang-org-x-term")
;;     (version "0.0.0-20210615171337-6886f2dfbf5b")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://go.googlesource.com/term")
;;              (commit (go-version->git-ref version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0661w7dp2ak1k4ii90v6chw2x8a6g4sc5j0ba58qlplaj4k5l0xs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "golang.org/x/term"))
;;     (propagated-inputs
;;      `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://pkg.go.dev/golang.org/x/term")
;;     (synopsis "Go terminal/console support")
;;     (description "@code{term} provides support functions for dealing with
;; terminals, as commonly found on Unix systems.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-stackexchange-wmi
;;   (package
;;     (name "go-github-com-stackexchange-wmi")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/StackExchange/wmi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ijhmr8sl768vkxslvw7fprav6srw4ivp32rzg3ydj8nc1wh86nl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/StackExchange/wmi"))
;;     (propagated-inputs
;;       `(("go-github-com-go-ole-go-ole" ,go-github-com-go-ole-go-ole)))
;;     (home-page "https://github.com/StackExchange/wmi")
;;     (synopsis "a WQL interface for WMI on Windows")
;;     (description "Package wmi provides a WQL interface for WMI on Windows.")
;;     (license license:expat)))

;; (define-public go-github-com-allegro-bigcache
;;   (package
;;     (name "go-github-com-allegro-bigcache")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/allegro/bigcache")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1h4lir4xfdyfbn6g8yv8g1if63wdx5k0az70rirnvriv303jlg7w"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/allegro/bigcache"))
;;     (home-page "https://github.com/allegro/bigcache")
;;     (synopsis "BigCache")
;;     (description
;;       "Fast, concurrent, evicting in-memory cache written to keep big number of entries without impact on performance.
;;        BigCache keeps entries on heap but omits GC for them.  To achieve that operations on bytes arrays take place,
;;        therefore entries (de)serialization in front of the cache will be needed in most use cases.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-victoriametrics-fastcache
;;   (package
;;     (name "go-github-com-victoriametrics-fastcache")
;;     (version "1.7.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/VictoriaMetrics/fastcache")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0sd8jyzc72g4nkknk5d91d2xfrpsyrsqf8yvmspzkpqvdw9viwpp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/VictoriaMetrics/fastcache"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)
;;         ("go-github-com-allegro-bigcache" ,go-github-com-allegro-bigcache)))
;;     (home-page "https://github.com/VictoriaMetrics/fastcache")
;;     (synopsis
;;       "fastcache - fast thread-safe inmemory cache for big number of entries in Go")
;;     (description "Package fastcache implements fast in-memory cache.")
;;     (license license:expat)))

;; (define-public go-github-com-aead-siphash
;;   (package
;;     (name "go-github-com-aead-siphash")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aead/siphash")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01kd1z82sc4nh3nj9c25aryyp396s7jrqc2kz9d7qq1vy2hdbznc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/aead/siphash"))
;;     (home-page "https://github.com/aead/siphash")
;;     (synopsis "The SipHash pseudo-random function")
;;     (description
;;       "Package siphash implements the SipHash-64 and SipHash-128
;;        pseudo-random-functions - with the recommended parameters:
;;        c = 2 and d = 4.
;;        SipHash computes a message authentication code (MAC) from a
;;        variable-length message and a 128 bit secret key.  SipHash
;;        was designed to be efficient, even for short inputs, with
;;        performance comparable to non-cryptographic hash functions.")
;;     (license license:expat)))

;; (define-public go-github-com-kkdai-bstream
;;   (package
;;     (name "go-github-com-kkdai-bstream")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kkdai/bstream")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "02brc58hhkkfhgb4yxjv3wshq355w533q7d49qrlfkhk265qph7w"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/kkdai/bstream"))
;;     (home-page "https://github.com/kkdai/bstream")
;;     (synopsis "BStream: A Bit Stream helper in Golang")
;;     (description
;;       "BStream: A Bit Stream helper in Golang.")
;;     (license license:expat)))

;; (define-public go-github-com-btcsuite-btcutil
;;   (package
;;     (name "go-github-com-btcsuite-btcutil")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/btcutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0wwykb4cbq8xj2mls2mxma5vaahdgdy3vqw1r2fi4wyj0yr4kyw9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/btcutil"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-kkdai-bstream" ,go-github-com-kkdai-bstream)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-btcsuite-btcd" ,go-github-com-btcsuite-btcd)
;;         ("go-github-com-aead-siphash" ,go-github-com-aead-siphash)))
;;     (home-page "https://github.com/btcsuite/btcutil")
;;     (synopsis "btcutil")
;;     (description
;;       "Package btcutil provides bitcoin-specific convenience functions and types.")
;;     (license license:isc)))

;; (define-public go-github-com-btcsuite-go-socks
;;   (package
;;     (name "go-github-com-btcsuite-go-socks")
;;     (version "0.0.0-20170105172521-4720035b7bfd")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/go-socks")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18cv2icj059lq4s99p6yh91hlas5f2gi3f1p4c10sjgwrs933d7b"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/go-socks"))
;;     (home-page "https://github.com/btcsuite/go-socks")
;;     (synopsis "SOCKS5 Proxy Package for Go")
;;     (description
;;       "Documentation: @url{http://godoc.org/github.com/btcsuite/go-socks/socks,http://godoc.org/github.com/btcsuite/go-socks/socks}")
;;     (license license:bsd-3)))

;; (define-public go-github-com-btcsuite-snappy-go
;;   (package
;;     (name "go-github-com-btcsuite-snappy-go")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/snappy-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0b2536a58l6advb0ag9ywz7i5cdzclvmm3x796jydv1yrbj5x2vk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/snappy-go"))
;;     (home-page "https://github.com/btcsuite/snappy-go")
;;     (synopsis #f)
;;     (description
;;       "Package snappy implements the snappy block-based compression format.
;;        It aims for very high speeds and reasonable compression.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-btcsuite-goleveldb
;;   (package
;;     (name "go-github-com-btcsuite-goleveldb")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/goleveldb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0kwllw5yflpn362xbsqphbm10qcy08v3zqs15zbyp4mkjjk0bl9z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/goleveldb"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-btcsuite-snappy-go"
;;          ,go-github-com-btcsuite-snappy-go)))
;;     (home-page "https://github.com/btcsuite/goleveldb")
;;     (synopsis "Installation")
;;     (description
;;       "This is an implementation of the LevelDB key/value database in the Go programming language.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-btcsuite-websocket
;;   (package
;;     (name "go-github-com-btcsuite-websocket")
;;     (version "0.0.0-20150119174127-31079b680792")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/websocket")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0xpkf257ml6fpfdgv7hxxc41n0d5yxxm3njm50qpzp7j71l9cjwa"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/websocket"))
;;     (home-page "https://github.com/btcsuite/websocket")
;;     (synopsis "Gorilla WebSocket")
;;     (description
;;       "Package websocket implements the WebSocket protocol defined RFC 6455.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-btcsuite-winsvc
;;   (package
;;     (name "go-github-com-btcsuite-winsvc")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/winsvc")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nsw8y86a5hzr2a3j6ch9myrpccj5bnsgaxpgajhzfk5d31xlw1z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/winsvc"))
;;     (home-page "https://github.com/btcsuite/winsvc")
;;     (synopsis "winsvc")
;;     (description
;;       "Package winsvc is simply a fork from http://code.google.com/p/winsvc.  As
;;        can be guessed from the name, it only works on Windows.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-jessevdk-go-flags
;;   (package
;;     (name "go-github-com-jessevdk-go-flags")
;;     (version "1.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jessevdk/go-flags")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13ixw1yx4bvcj66lkc8zgwf9j7gkvj686g991gycdsafvdvca0lj"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jessevdk/go-flags"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/jessevdk/go-flags")
;;     (synopsis "go-flags: a go library for parsing command line arguments")
;;     (description
;;       "Package flags provides an extensive command line option parser.
;;        The flags package is similar in functionality to the go built-in flag package
;;        but provides more options and uses reflection to provide a convenient and
;;        succinct way of specifying command line options.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-jrick-logrotate
;;   (package
;;     (name "go-github-com-jrick-logrotate")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jrick/logrotate")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0srl6figwjqpi3nbp7br8sxpmvh4v8lzbny1b4lar4ny0156p5nl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jrick/logrotate"))
;;     (home-page "https://github.com/jrick/logrotate")
;;     (synopsis "logrotate: slightly better than")
;;     (description
;;       "Command logrotate writes and rotates logs read from stdin.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-btcsuite-btcd
;;   (package
;;     (name "go-github-com-btcsuite-btcd")
;;     (version "0.22.0-beta")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/btcsuite/btcd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rcsd3wcs0cii8qq0573h9fi1x92i8c1gzdvifnkm2r0ndl4knla"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/btcsuite/btcd"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-jrick-logrotate" ,go-github-com-jrick-logrotate)
;;         ("go-github-com-jessevdk-go-flags" ,go-github-com-jessevdk-go-flags)
;;         ("go-github-com-decred-dcrd-lru" ,go-github-com-decred-dcrd-lru)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-btcsuite-winsvc" ,go-github-com-btcsuite-winsvc)
;;         ("go-github-com-btcsuite-websocket" ,go-github-com-btcsuite-websocket)
;;         ("go-github-com-btcsuite-goleveldb" ,go-github-com-btcsuite-goleveldb)
;;         ("go-github-com-btcsuite-go-socks" ,go-github-com-btcsuite-go-socks)
;;         ("go-github-com-btcsuite-btcutil" ,go-github-com-btcsuite-btcutil)
;;         ("go-github-com-btcsuite-btclog" ,go-github-com-btcsuite-btclog)))
;;     (home-page "https://github.com/btcsuite/btcd")
;;     (synopsis "btcd")
;;     (description "btcd is a full-node bitcoin implementation written in Go.")
;;     (license license:isc)))

;; (define-public go-github-com-cespare-cp
;;   (package
;;     (name "go-github-com-cespare-cp")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cespare/cp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gdsd4kndi4qzbxg4zr0zs46ab8fisgazim2jiacglcnxhhifki7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cespare/cp"))
;;     (home-page "https://github.com/cespare/cp")
;;     (synopsis "cp")
;;     (description
;;       "Package cp offers simple file and directory copying for Go.")
;;     (license license:expat)))

;; (define-public go-github-com-cloudflare-cloudflare-go
;;   (package
;;     (name "go-github-com-cloudflare-cloudflare-go")
;;     (version "0.26.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cloudflare/cloudflare-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1947ky7vjb3rag47ziz8prx66f2bhcbqbgx2qdacxnidkwnr37i0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cloudflare/cloudflare-go"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-urfave-cli-v2" ,go-github-com-urfave-cli-v2)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-olekukonko-tablewriter"
;;          ,go-github-com-olekukonko-tablewriter)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/cloudflare/cloudflare-go")
;;     (synopsis "cloudflare-go")
;;     (description "Package cloudflare implements the Cloudflare v4 API.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-consensys-bavard
;;   (package
;;     (name "go-github-com-consensys-bavard")
;;     (version "0.1.7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ConsenSys/bavard")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18b1n2z0zapbcmzybd139j5arrsx6712sdd60fg9zq6mraqgpwab"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/consensys/bavard"))
;;     (home-page "https://github.com/consensys/bavard")
;;     (synopsis "bavard")
;;     (description
;;       "Package bavard contains helper functions to generate consistent code from text/template templates
;;        it is used by github.com/consensys/gurvy && github.com/consensys/gnark && github.com/consensys/goff")
;;     (license license:asl2.0)))

;; (define-public go-github-com-leanovate-gopter
;;   (package
;;     (name "go-github-com-leanovate-gopter")
;;     (version "0.2.9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/leanovate/gopter")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1xyj9djc8nkq0wiz0689fwhh84hykmnlr2cjzk9xcghkvzbddlhr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/leanovate/gopter"))
;;     (home-page "https://github.com/leanovate/gopter")
;;     (synopsis "GOPTER")
;;     (description
;;       "Package gopter contain the main interfaces of the GOlang Property TestER.")
;;     (license license:expat)))

;; (define-public go-github-com-consensys-gnark-crypto
;;   (package
;;     (name "go-github-com-consensys-gnark-crypto")
;;     (version "0.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ConsenSys/gnark-crypto")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0va8y77mb3a4ywayx6ckm8bxingqygmp1xc3584z2hq204fnf2zr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/consensys/gnark-crypto"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-leanovate-gopter" ,go-github-com-leanovate-gopter)
;;         ("go-github-com-consensys-bavard" ,go-github-com-consensys-bavard)))
;;     (home-page "https://github.com/consensys/gnark-crypto")
;;     (synopsis "gnark-crypto")
;;     (description
;;      "gnark-crypto provides elliptic curve cryptography (+pairing) on BN254, 
;;       BLS12-381, BLS12-377, BW6-761. Also various algorithms (algebra, crypto) 
;;       of particular interest for zero knowledge proof systems.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-docker-docker
;;   (package
;;     (name "go-github-com-docker-docker")
;;     (version "20.10.9+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/moby/moby")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "04xx7m8s9vrkm67ba2k5i90053h5qqkjcvw5rc8w7m5a309xcp4n"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/docker/docker"))
;;     (home-page "https://github.com/docker/docker")
;;     (synopsis "The Moby Project")
;;     (description
;;       "Moby is an open-source project created by Docker to enable and accelerate software containerization.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-dop251-goja-nodejs
;;   (package
;;     (name "go-github-com-dop251-goja-nodejs")
;;     (version "0.0.0-20210920152751-582170a1676b")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dop251/goja_nodejs")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16x4a1lqwshfbm7zfhcb3g5scf026l7x5qjm30dcmjigfmlcnjgf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dop251/goja_nodejs"))
;;     (home-page "https://github.com/dop251/goja_nodejs")
;;     (synopsis "Nodejs compatibility library for Goja")
;;     (description
;;       "This is a collection of Goja modules that provide nodejs compatibility.")
;;     (license license:expat)))

;; (define-public go-github-com-dop251-goja
;;   (package
;;     (name "go-github-com-dop251-goja")
;;     (version "0.0.0-20211011172007-d99e4b8cbf48")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dop251/goja")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13idkdhigbablrj0761f4ki3b8zai5zjqms67r5fwvczp7zbk23d"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dop251/goja"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-go-sourcemap-sourcemap"
;;          ,go-github-com-go-sourcemap-sourcemap)
;;         ("go-github-com-dop251-goja-nodejs" ,go-github-com-dop251-goja-nodejs)
;;         ("go-github-com-dlclark-regexp2" ,go-github-com-dlclark-regexp2)))
;;     (home-page "https://github.com/dop251/goja")
;;     (synopsis "goja")
;;     (description "ECMAScript 5.1(+) implementation in Go.")
;;     (license license:expat)))

;; (define-public go-github-com-fjl-memsize
;;   (package
;;     (name "go-github-com-fjl-memsize")
;;     (version "0.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/fjl/memsize")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rhfs8xz5ii24sbi8fqy0zb282yd2gc7jz6iwmy4x5hakf03f2z0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/fjl/memsize"))
;;     (home-page "https://github.com/fjl/memsize")
;;     (synopsis #f)
;;     (description "Package memsize computes the size of your object graph.")
;;     (license license:expat)))

;; (define-public go-github-com-gballet-go-libpcsclite
;;   (package
;;     (name "go-github-com-gballet-go-libpcsclite")
;;     (version "0.0.0-20191108122812-4678299bea08")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gballet/go-libpcsclite")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0jn77a8hcb4kfz81xmpl0lxz0sg1gnika0kxdj79rmdkgcrcmw3m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gballet/go-libpcsclite"))
;;     (home-page "https://github.com/gballet/go-libpcsclite")
;;     (synopsis "go-libpcsclite")
;;     (description
;;       "This package provides a golang implementation of the libpcpsclite client.  
;;        It connects to the pcscd daemon over sockets.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-ole-go-ole
;;   (package
;;     (name "go-github-com-go-ole-go-ole")
;;     (version "1.2.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-ole/go-ole")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0aswlz7dr6v0if6bdwj3ivawj8cql2hgp84yymsq3ic9nys6537s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-ole/go-ole"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/go-ole/go-ole")
;;     (synopsis "Go OLE")
;;     (description
;;       "Go bindings for Windows COM using shared libraries instead of cgo.")
;;     (license license:expat)))

;; (define-public go-github-com-graph-gophers-graphql-go
;;   (package
;;     (name "go-github-com-graph-gophers-graphql-go")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/graph-gophers/graphql-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0s4qq9pi66y213kc1s649dr6pbxq6faqhjbpwb1ix3cdy03zn6qb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/graph-gophers/graphql-go"))
;;     (propagated-inputs
;;       `(("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)))
;;     (home-page "https://github.com/graph-gophers/graphql-go")
;;     (synopsis "graphql-go")
;;     (description
;;       "The goal of this project is to provide full support of the GraphQL draft 
;;        specification with a set of idiomatic, easy to use Go packages.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-mitchellh-pointerstructure
;;   (package
;;     (name "go-github-com-mitchellh-pointerstructure")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mitchellh/pointerstructure")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1p6rmkwixnyf291v5jc0g72b3krp3awyakfamkq5485gvm8vk0mm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mitchellh/pointerstructure"))
;;     (propagated-inputs
;;       `(("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)))
;;     (home-page "https://github.com/mitchellh/pointerstructure")
;;     (synopsis "pointerstructure")
;;     (description
;;       "Package pointerstructure provides functions for identifying a specific
;;        value within any Go structure using a string syntax.")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-go-bexpr
;;   (package
;;     (name "go-github-com-hashicorp-go-bexpr")
;;     (version "0.1.10")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-bexpr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "14id00c98kphnm61l20q46ffvh0k980wdnmrlx8x72hs9m2cblag"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-bexpr"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mitchellh-pointerstructure"
;;          ,go-github-com-mitchellh-pointerstructure)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/hashicorp/go-bexpr")
;;     (synopsis "bexpr - Boolean Expression Evaluator")
;;     (description
;;       "bexpr is an implementation of a generic boolean expression evaluator.
;;        The general goal is to be able to evaluate some expression against some
;;        arbitrary data and get back a boolean of whether or not the data
;;        was matched by the expression")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-holiman-bloomfilter-v2
;;   (package
;;     (name "go-github-com-holiman-bloomfilter-v2")
;;     (version "2.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/holiman/bloomfilter")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16dlc7q0w99nsqjh1ibv54rmmdl2kisbh5z57j963zlwbg43byjz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/holiman/bloomfilter/v2"))
;;     (home-page "https://github.com/holiman/bloomfilter")
;;     (synopsis "A bloom filter implementation")
;;     (description
;;      "Face-meltingly fast, thread-safe, marshalable, unionable, probability- 
;;       and optimal-size-calculating Bloom filter in go.")
;;     (license #f)))

;; (define-public go-github-com-holiman-uint256
;;   (package
;;     (name "go-github-com-holiman-uint256")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/holiman/uint256")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gi0i5zv5czydnvk5fa3p7a92ygfdi0x8sbaynn9i1ivajivw8g4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/holiman/uint256"))
;;     (home-page "https://github.com/holiman/uint256")
;;     (synopsis "Fixed size 256-bit math library")
;;     (description
;;       "This is a library specialized at replacing the big.Int library for math based on 256-bit types, 
;;        used by both go-ethereum and turbo-geth.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-huin-goutil
;;   (package
;;     (name "go-github-com-huin-goutil")
;;     (version "0.0.0-20170803182201-1ca381bf3150")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/huin/goutil")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0alhyacsfqic2wxyqn4gvk9wzjl4pkmy8rhvqjk84xsghgx5xf12"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/huin/goutil"))
;;     (home-page "https://github.com/huin/goutil")
;;     (synopsis #f)
;;     (description
;;       "goutil is a collection of misc Go utility code that is potentially useful
;;        across multiple projects, and has therefore been factored out.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-huin-goupnp
;;   (package
;;     (name "go-github-com-huin-goupnp")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/huin/goupnp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1cv561wlzlzwxwpwirmyck33bhfmgpgv4wfq65wv8wkk6lgvqz0m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/huin/goupnp"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-github-com-huin-goutil" ,go-github-com-huin-goutil)))
;;     (home-page "https://github.com/huin/goupnp")
;;     (synopsis "Installation")
;;     (description
;;       "goupnp is an implementation of a client for various UPnP services.")
;;     (license license:bsd-2)))

;; (define-public go-collectd-org
;;   (package
;;     (name "go-collectd-org")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/collectd/go-collectd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rr9rnc777jk27a7yxhdb7vgkj493158a8k6q44x51s30dkp78x3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "collectd.org"))
;;     (home-page "https://collectd.org")
;;     (synopsis "go-collectd")
;;     (description
;;       "Utilities for using collectd together with Go.")
;;     (license license:isc)))

;; (define-public go-github-com-benbjohnson-tmpl
;;   (package
;;     (name "go-github-com-benbjohnson-tmpl")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/benbjohnson/tmpl")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1p2yd1yyzlz7iyq0d4dma4pbb2d855k2lkb4ndx2s3qqi57lmnzg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/benbjohnson/tmpl"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mitchellh-copystructure"
;;          ,go-github-com-mitchellh-copystructure)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-huandu-xstrings" ,go-github-com-huandu-xstrings)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-dustin-go-humanize" ,go-github-com-dustin-go-humanize)
;;         ("go-github-com-masterminds-sprig" ,go-github-com-masterminds-sprig)
;;         ("go-github-com-masterminds-semver" ,go-github-com-masterminds-semver)
;;         ("go-github-com-masterminds-goutils"
;;          ,go-github-com-masterminds-goutils)))
;;     (home-page "https://github.com/benbjohnson/tmpl")
;;     (synopsis "tmpl")
;;     (description
;;       "This program is a command line interface to Go's text/template library.  It
;;        can be used by passing in a set of JSON-encoded data and a list of template
;;        paths ending in a .tmpl extension.  The templates are processed and their
;;        results are saved to the filename with the .tmpl extension removed.")
;;     (license license:expat)))

;; (define-public go-github-com-bmizerany-pat
;;   (package
;;     (name "go-github-com-bmizerany-pat")
;;     (version "0.0.0-20210406213842-e4b6760bdd6f")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/bmizerany/pat")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y13hy8gk6dxwk95kgq4r536ix1d1znas6n7jzz1z8rz7kdwc3w8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/bmizerany/pat"))
;;     (home-page "https://github.com/bmizerany/pat")
;;     (synopsis
;;       "pat (formerly pat.go) - A Sinatra style pattern muxer for Go's net/http library")
;;     (description "Package pat implements a simple URL pattern muxer")
;;     (license license:expat)))

;; (define-public go-github-com-dgryski-go-bitstream
;;   (package
;;     (name "go-github-com-dgryski-go-bitstream")
;;     (version "0.0.0-20180413035011-3522498ce2c8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dgryski/go-bitstream")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1lr0qjdddxdiwfs530saglk4q5395i4n3w8h8k5j8nsjj8k3na7f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dgryski/go-bitstream"))
;;     (home-page "https://github.com/dgryski/go-bitstream")
;;     (synopsis #f)
;;     (description
;;       "Package bitstream is a simple wrapper around a io.Reader and io.Writer to provide bit-level access to the stream.")
;;     (license license:expat)))

;; (define-public go-github-com-go-chi-chi
;;   (package
;;     (name "go-github-com-go-chi-chi")
;;     (version "1.5.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-chi/chi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jpa4r5h15gkpfmb6xq1hamv0q20i8bdpw3kh7dw4n1v7pshjsr8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-chi/chi"))
;;     (home-page "https://github.com/go-chi/chi")
;;     (synopsis #f)
;;     (description
;;       "Package chi is a small, idiomatic and composable router for building HTTP services.")
;;     (license license:expat)))

;; (define-public go-github-com-sap-go-hdb
;;   (package
;;     (name "go-github-com-sap-go-hdb")
;;     (version "0.105.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/SAP/go-hdb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1d7w4lfwf49d5nzyh20y708q52b1ja16wzq6nlknnysp55zwmyfp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/SAP/go-hdb"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/SAP/go-hdb")
;;     (synopsis "go-hdb")
;;     (description
;;       "Go-hdb is a native Go (golang) HANA database driver for Go's sql package.  
;;        It implements the SAP HANA SQL command network protocol.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-andreyvit-diff
;;   (package
;;     (name "go-github-com-andreyvit-diff")
;;     (version "0.0.0-20170406064948-c7f18ee00883")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/andreyvit/diff")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1s4qjkxig5yqahpzfl4xqh4kzi9mymdpkzq6kj3f4dr5dl3hlynr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/andreyvit/diff"))
;;     (home-page "https://github.com/andreyvit/diff")
;;     (synopsis "diff")
;;     (description
;;       "diff provides quick and easy string diffing functions based on github.com/sergi/go-diff, 
;;        mainly for diffing strings in tests")
;;     (license license:expat)))

;; (define-public go-github-com-benbjohnson-immutable
;;   (package
;;     (name "go-github-com-benbjohnson-immutable")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/benbjohnson/immutable")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wnwqbxichjpaiq1gbh66lkaqwswcfnmm7hj4bvp747n7xd8jwmc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/benbjohnson/immutable"))
;;     (home-page "https://github.com/benbjohnson/immutable")
;;     (synopsis "Immutable")
;;     (description "Package immutable provides immutable collection types.")
;;     (license license:expat)))

;; (define-public go-github-com-bonitoo-io-go-sql-bigquery
;;   (package
;;     (name "go-github-com-bonitoo-io-go-sql-bigquery")
;;     (version "0.3.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/bonitoo-io/go-sql-bigquery")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01rdaan70md55cyv7wnyk3wndcd8s1zc7vq3y3fkq2ja952fy8km"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/bonitoo-io/go-sql-bigquery"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)
;;         ("go-cloud-google-com-go-pubsub" ,go-cloud-google-com-go-pubsub)
;;         ("go-cloud-google-com-go-bigquery" ,go-cloud-google-com-go-bigquery)))
;;     (home-page "https://github.com/bonitoo-io/go-sql-bigquery")
;;     (synopsis "BigQuery SQL Driver for Golang")
;;     (description
;;       "This is an implementation of the BigQuery Client as a database/sql/driver
;;        for easy integration and usage.")
;;     (license license:expat)))

;; (define-public go-github-com-c-bata-go-prompt
;;   (package
;;     (name "go-github-com-c-bata-go-prompt")
;;     (version "0.2.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/c-bata/go-prompt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16hfb5xvgixn1anbsvazs8ihcrzyww0n8fddx10yiygqhsp07avz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/c-bata/go-prompt"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-pkg-term" ,go-github-com-pkg-term)
;;         ("go-github-com-mattn-go-tty" ,go-github-com-mattn-go-tty)
;;         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
;;         ("go-github-com-mattn-go-colorable"
;;          ,go-github-com-mattn-go-colorable)))
;;     (home-page "https://github.com/c-bata/go-prompt")
;;     (synopsis "go-prompt")
;;     (description
;;       "This package provides a library for building powerful interactive prompts inspired by python-prompt-toolkit,
;;        making it easier to build cross-platform command line tools using Go.")
;;     (license license:expat)))

;; (define-public go-github-com-dave-jennifer
;;   (package
;;     (name "go-github-com-dave-jennifer")
;;     (version "1.4.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dave/jennifer")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0sv57xs9ih924h9bbiipgrq3m0vzkh4ksm7dgmpjkw16i5pl6bwm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dave/jennifer"))
;;     (home-page "https://github.com/dave/jennifer")
;;     (synopsis "Jennifer")
;;     (description "Package jennifer is a code generator for Go")
;;     (license license:expat)))

;; (define-public go-github-com-golang-sql-civil
;;   (package
;;     (name "go-github-com-golang-sql-civil")
;;     (version "0.0.0-20190719163853-cb61b32ac6fe")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang-sql/civil")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0yadfbvi0w06lg3sxw0daji02jxd3vv2in26yfmwpl4vd4vm9zay"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang-sql/civil"))
;;     (home-page "https://github.com/golang-sql/civil")
;;     (synopsis "Civil Date and Time")
;;     (description
;;       "Package civil implements types for civil time, a time-zone-independent
;;        representation of time that follows the rules of the proleptic
;;        Gregorian calendar with exactly 24-hour days, 60-minute hours, and 60-second
;;        minutes.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-denisenkom-go-mssqldb
;;   (package
;;     (name "go-github-com-denisenkom-go-mssqldb")
;;     (version "0.11.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/denisenkom/go-mssqldb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gh1k0sp4ka1cnqqmhhs5d5c0gp4xsv4pfy6azky5djpmsrwnb57"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/denisenkom/go-mssqldb"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-golang-sql-civil" ,go-github-com-golang-sql-civil)))
;;     (home-page "https://github.com/denisenkom/go-mssqldb")
;;     (synopsis "A pure Go MSSQL driver for Go's database/sql package")
;;     (description
;;       "package mssql implements the TDS protocol used to connect to MS SQL Server (sqlserver)
;;        database servers.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-gorilla-websocket
;;   (package
;;     (name "go-github-com-gorilla-websocket")
;;     (version "1.4.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gorilla/websocket")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mkm9w6kjkrlzab5wh8p4qxkc0icqawjbvr01d2nk6ykylrln40s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gorilla/websocket"))
;;     (home-page "https://github.com/gorilla/websocket")
;;     (synopsis "Gorilla WebSocket")
;;     (description
;;       "Package websocket implements the WebSocket protocol defined in RFC 6455.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-eclipse-paho-mqtt-golang
;;   (package
;;     (name "go-github-com-eclipse-paho-mqtt-golang")
;;     (version "1.3.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/eclipse/paho.mqtt.golang")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "140v0nvmrg3q07lx9il03m6xagzy6xzw4c7akfq63ylmayl167qg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/eclipse/paho.mqtt.golang"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)))
;;     (home-page "https://github.com/eclipse/paho.mqtt.golang")
;;     (synopsis "Eclipse Paho MQTT Go client")
;;     (description "Package mqtt provides an MQTT v3.1.1 client library.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-foxcpp-go-mockdns
;;   (package
;;     (name "go-github-com-foxcpp-go-mockdns")
;;     (version "0.0.0-20210729171921-fb145fc6f897")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/foxcpp/go-mockdns")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zgskxkfa034hir1cjph9d1x3ywvjfkn7x329vakw3j868bw5c1c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/foxcpp/go-mockdns"))
;;     (propagated-inputs `(("go-github-com-miekg-dns" ,go-github-com-miekg-dns)))
;;     (home-page "https://github.com/foxcpp/go-mockdns")
;;     (synopsis "go-mockdns")
;;     (description
;;       "Boilerplate for testing of code involving DNS lookups, including 
;;        hacks to redirect net.Lookup* calls.")
;;     (license license:expat)))

;; (define-public go-github-com-golang-geo
;;   (package
;;     (name "go-github-com-golang-geo")
;;     (version "0.0.0-20210211234256-740aa86cb551")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/geo")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0apra5clg35aig4dmwz2lil44ndpc2faqkdklxnimicwas4pm0h9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/geo"))
;;     (home-page "https://github.com/golang/geo")
;;     (synopsis "Overview")
;;     (description
;;       "S2 is a library for spherical geometry that aims to have the same robustness,
;;        flexibility, and performance as the best planar geometry libraries.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-influxdata-promql-v2
;;   (package
;;     (name "go-github-com-influxdata-promql-v2")
;;     (version "2.12.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/promql")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hpq5wkg8vsj8hfj057hcpbakn7rnx6d9mlc80v0nbr8qblxdhgp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/promql/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-cespare-xxhash" ,go-github-com-cespare-xxhash)))
;;     (home-page "https://github.com/influxdata/promql")
;;     (synopsis "PromQL Module")
;;     (description
;;       "The PromQL module in this package is a pruned version of the native Prometheus promql
;;        package, but extracted into a single module with fewer dependencies.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-influxdata-tdigest
;;   (package
;;     (name "go-github-com-influxdata-tdigest")
;;     (version "0.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/tdigest")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0acaka7p8f93r068nr7d3inciqc2m2cc3gidz4dpiadl28pg9mgz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/tdigest"))
;;     (propagated-inputs
;;       `(("go-gonum-org-v1-netlib" ,go-gonum-org-v1-netlib)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/influxdata/tdigest")
;;     (synopsis "tdigest")
;;     (description
;;       "This is an implementation of Ted Dunning's t-digest in Go.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-mattn-go-tty
;;   (package
;;     (name "go-github-com-mattn-go-tty")
;;     (version "0.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mattn/go-tty")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0d1d63q02pc5k5ga8bw4yjbkrli2769vg237psajsskjirjy53vf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mattn/go-tty"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable"
;;          ,go-github-com-mattn-go-colorable)))
;;     (home-page "https://github.com/mattn/go-tty")
;;     (synopsis "go-tty")
;;     (description "Simple tty utility")
;;     (license license:expat)))

;; (define-public go-github-com-pkg-term
;;   (package
;;     (name "go-github-com-pkg-term")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pkg/term")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0flyj256zv5qc7z3m3s147k46p9whr7hl06zzwgvy2dkjp90ff73"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pkg/term"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/pkg/term")
;;     (synopsis "term")
;;     (description
;;       "Package term manages POSIX terminals.  As POSIX terminals are connected to,
;;        or emulate, a UART, this package also provides control over the various
;;        UART and serial line parameters.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-xdg-scram
;;   (package
;;     (name "go-github-com-xdg-scram")
;;     (version "1.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xdg/scram")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "08i7h6mi4f8m2d05fca2hbyd0vqdxsa3kc8vlrx9b4f7v3y6cz8l"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xdg/scram"))
;;     (home-page "https://github.com/xdg/scram")
;;     (synopsis #f)
;;     (description
;;       "Package scram provides client and server implementations of the Salted
;;        Challenge Response Authentication Mechanism (SCRAM) described in RFC-5802
;;        and RFC-7677.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-xdg-stringprep
;;   (package
;;     (name "go-github-com-xdg-stringprep")
;;     (version "1.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xdg/stringprep")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "116kwhf0gjwjlk5rmyai1qdrr5kzmzm4bqs6l1sxdlnkv8x2zy0y"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xdg/stringprep"))
;;     (home-page "https://github.com/xdg/stringprep")
;;     (synopsis #f)
;;     (description
;;       "Package stringprep provides data tables and algorithms for RFC-3454,
;;        including errata (as of 2018-02).  It also provides a profile for
;;        SASLprep as defined in RFC-4013.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-segmentio-kafka-go
;;   (package
;;     (name "go-github-com-segmentio-kafka-go")
;;     (version "0.4.21")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/segmentio/kafka-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y5wn0b4dmmka5nq9ngl10iax1p009hkf9qcnc7ykir4incf0ar1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/segmentio/kafka-go"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-xdg-stringprep" ,go-github-com-xdg-stringprep)
;;         ("go-github-com-xdg-scram" ,go-github-com-xdg-scram)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
;;         ("go-github-com-eapache-go-xerial-snappy"
;;          ,go-github-com-eapache-go-xerial-snappy)))
;;     (home-page "https://github.com/segmentio/kafka-go")
;;     (synopsis "kafka-go")
;;     (description
;;       "We rely on both Go and Kafka a lot at Segment.  Unfortunately, the state of the Go
;;        client libraries for Kafka at the time of this writing was not ideal.  The available
;;        options were:")
;;     (license license:expat)))

;; (define-public go-github-com-mattn-go-ieproxy
;;   (package
;;     (name "go-github-com-mattn-go-ieproxy")
;;     (version "0.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mattn/go-ieproxy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0x1ijwwp22s20vjbca5ac7y7bx2jp6jizzqa38ks4943q7vi4w09"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mattn/go-ieproxy"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)))
;;     (home-page "https://github.com/mattn/go-ieproxy")
;;     (synopsis "ieproxy")
;;     (description
;;       "Package ieproxy is a utility to retrieve the proxy parameters 
;;        (especially of Internet Explorer on windows)")
;;     (license license:expat)))

;; (define-public go-github-com-azure-azure-pipeline-go
;;   (package
;;     (name "go-github-com-azure-azure-pipeline-go")
;;     (version "0.2.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/azure-pipeline-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "154qwr7v1q2wjp263jhkvrygi728q568zc930h3fxp75v32laqwb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Azure/azure-pipeline-go"))
;;     (propagated-inputs
;;       `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-mattn-go-ieproxy" ,go-github-com-mattn-go-ieproxy)))
;;     (home-page "https://github.com/Azure/azure-pipeline-go")
;;     (synopsis "Contributing")
;;     (description
;;       "This project welcomes contributions and suggestions.  Most contributions require you to agree to a
;;        Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
;;        the rights to use your contribution.  For details, visit https://cla.microsoft.com.")
;;     (license license:expat)))

;; (define-public go-github-com-azure-azure-storage-blob-go
;;   (package
;;     (name "go-github-com-azure-azure-storage-blob-go")
;;     (version "0.14.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/azure-storage-blob-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1z35hnzyrj0q9bigq5dx7gnx11w2zkpkv4150rh43ccj78ncsldb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Azure/azure-storage-blob-go"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-azure-go-autorest-autorest-adal"
;;          ,go-github-com-azure-go-autorest-autorest-adal)
;;         ("go-github-com-azure-azure-pipeline-go"
;;          ,go-github-com-azure-azure-pipeline-go)))
;;     (home-page "https://github.com/Azure/azure-storage-blob-go")
;;     (synopsis "Azure Storage Blob SDK for Go (PREVIEW)")
;;     (description
;;       "The Microsoft Azure Storage SDK for Go allows you to build applications that takes 
;;        advantage of Azure's scalable cloud storage.")
;;     (license license:expat)))

;; (define-public go-github-com-google-flatbuffers
;;   (package
;;     (name "go-github-com-google-flatbuffers")
;;     (version "2.0.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/flatbuffers")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zbf6bdpps8369r1ql00irxrp58jnalycc8jcapb8iqg654vlfz8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/flatbuffers"))
;;     (home-page "https://github.com/google/flatbuffers")
;;     (synopsis "FlatBuffers")
;;     (description
;;       "FlatBuffers is a cross platform serialization library architected for
;;        maximum memory efficiency.  It allows you to directly access serialized 
;;        data without parsing/unpacking it first, while still having great forwards/backwards 
;;        compatibility.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-pierrec-lz4-v4
;;   (package
;;     (name "go-github-com-pierrec-lz4-v4")
;;     (version "4.1.8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pierrec/lz4")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ffsm2ny2v6nasc3zww5f2bl0jqi2jmiyqm8x2cvyzrd0clay1wl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pierrec/lz4/v4"))
;;     (home-page "https://github.com/pierrec/lz4")
;;     (synopsis "lz4 : LZ4 compression in pure Go")
;;     (description
;;       "Package lz4 implements reading and writing lz4 compressed data.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-apache-arrow-go-arrow
;;   (package
;;     (name "go-github-com-apache-arrow-go-arrow")
;;     (version "0.0.0-20211018213557-f2f663be0a87")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/apache/arrow")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00z3ay5lg1vlx5pgdj26inl05nvg4rvddzvf4avgd7880s1ngnbl"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/apache/arrow/go/arrow"
;;         #:unpack-path
;;         "github.com/apache/arrow"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pierrec-lz4-v4" ,go-github-com-pierrec-lz4-v4)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-google-flatbuffers" ,go-github-com-google-flatbuffers)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/apache/arrow")
;;     (synopsis "Package arrow provides an implementation of Apache Arrow.")
;;     (description "Apache Arrow is a multi-language toolbox for accelerated data interchange and in-memory processing")
;;     (license license:asl2.0)))

;; (define-public go-github-com-form3tech-oss-jwt-go
;;   (package
;;     (name "go-github-com-form3tech-oss-jwt-go")
;;     (version "3.2.5+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/form3tech-oss/jwt-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1x31syqcb8w7qdfsilz3bbl6kxrirnzndil3y7bfp9ad6qqxdshf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/form3tech-oss/jwt-go"))
;;     (home-page "https://github.com/form3tech-oss/jwt-go")
;;     (synopsis "jwt-go")
;;     (description
;;       "Package jwt is a Go implementation of JSON Web Tokens: 
;;        http://self-issued.info/docs/draft-jones-json-web-token.html")
;;     (license license:expat)))

;; (define-public go-github-com-gabriel-vasile-mimetype
;;   (package
;;     (name "go-github-com-gabriel-vasile-mimetype")
;;     (version "1.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gabriel-vasile/mimetype")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ivxwgb62dyvj8viyszn7p74lmykcplfgz38qrv5hwdf8i5xd53a"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gabriel-vasile/mimetype"))
;;     (propagated-inputs `(("go-golang-org-x-net" ,go-golang-org-x-net)))
;;     (home-page "https://github.com/gabriel-vasile/mimetype")
;;     (synopsis "Features")
;;     (description
;;       "Package mimetype uses magic number signatures to detect the MIME type of a file.")
;;     (license license:expat)))

;; (define-public go-github-com-pkg-browser
;;   (package
;;     (name "go-github-com-pkg-browser")
;;     (version "0.0.0-20210911075715-681adbf594b8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pkg/browser")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1d40cz35x6f5hhals00d2h08l2r9vchpdmc9742s80qbl9fmr615"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pkg/browser"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/pkg/browser")
;;     (synopsis "browser")
;;     (description
;;       "Package browser provides helpers to open files, readers, and urls in a browser window.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-snowflakedb-gosnowflake
;;   (package
;;     (name "go-github-com-snowflakedb-gosnowflake")
;;     (version "1.6.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/snowflakedb/gosnowflake")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ah7q4lhap4z02lsh413qy1706gi7qly44873xbbs3kamm4lj0q2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/snowflakedb/gosnowflake"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-pkg-browser" ,go-github-com-pkg-browser)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-gabriel-vasile-mimetype"
;;          ,go-github-com-gabriel-vasile-mimetype)
;;         ("go-github-com-form3tech-oss-jwt-go"
;;          ,go-github-com-form3tech-oss-jwt-go)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)
;;         ("go-github-com-aws-aws-sdk-go-v2-service-s3"
;;          ,go-github-com-aws-aws-sdk-go-v2-service-s3)
;;         ("go-github-com-aws-aws-sdk-go-v2-feature-s3-manager"
;;          ,go-github-com-aws-aws-sdk-go-v2-feature-s3-manager)
;;         ("go-github-com-aws-aws-sdk-go-v2-credentials"
;;          ,go-github-com-aws-aws-sdk-go-v2-credentials)
;;         ("go-github-com-aws-aws-sdk-go-v2" ,go-github-com-aws-aws-sdk-go-v2)
;;         ("go-github-com-apache-arrow-go-arrow"
;;          ,go-github-com-apache-arrow-go-arrow)
;;         ("go-github-com-azure-azure-storage-blob-go"
;;          ,go-github-com-azure-azure-storage-blob-go)))
;;     (home-page "https://github.com/snowflakedb/gosnowflake")
;;     (synopsis #f)
;;     (description
;;       "Package gosnowflake is a pure Go Snowflake driver for the database/sql package.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-data-dog-go-sqlmock
;;   (package
;;     (name "go-github-com-data-dog-go-sqlmock")
;;     (version "1.5.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/DATA-DOG/go-sqlmock")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "19vn6xf3wqam312g30f7qdcrh8km3wzqsa43qipyz2y5ma2l7pd4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/DATA-DOG/go-sqlmock"))
;;     (home-page "https://github.com/DATA-DOG/go-sqlmock")
;;     (synopsis "Sql driver mock for Golang")
;;     (description
;;       "Package sqlmock is a mock library implementing sql driver.  Which has one and only
;;        purpose - to simulate any sql driver behavior in tests, without needing a real
;;        database connection.  It helps to maintain correct **TDD** workflow.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-asaskevich-govalidator
;;   (package
;;     (name "go-github-com-asaskevich-govalidator")
;;     (version "0.0.0-20210307081110-f21760c49a8d")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/asaskevich/govalidator")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0aab1pym5c6di8vidynp6ly5j4kcqv6lp2737gw0a07zng0nn8lw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/asaskevich/govalidator"))
;;     (home-page "https://github.com/asaskevich/govalidator")
;;     (synopsis "govalidator")
;;     (description
;;       "Package govalidator is package of validators and sanitizers for strings, structs and collections.")
;;     (license license:expat)))

;; (define-public go-github-com-go-openapi-errors
;;   (package
;;     (name "go-github-com-go-openapi-errors")
;;     (version "0.20.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-openapi/errors")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16np7q3bassdn3fcjh0kfryv0206yd38y0v4k8d7y6jl3n5f8rlw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-openapi/errors"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-niemeyer-pretty" ,go-github-com-niemeyer-pretty)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/go-openapi/errors")
;;     (synopsis "OpenAPI errors")
;;     (description
;;       "Package errors provides an Error interface and several concrete types
;;        implementing this interface to manage API errors and JSON-schema validation
;;        errors.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-go-stack-stack
;;   (package
;;     (name "go-github-com-go-stack-stack")
;;     (version "1.8.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-stack/stack")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01m6l9w84yq2yyly8bdfsgc386hla1gn9431c7vr3mfa3bchj5wb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-stack/stack"))
;;     (home-page "https://github.com/go-stack/stack")
;;     (synopsis "stack")
;;     (description
;;       "Package stack implements utilities to capture, manipulate, and format call
;;        stacks.  It provides a simpler API than package runtime.")
;;     (license license:expat)))

;; (define-public go-github-com-joho-godotenv
;;   (package
;;     (name "go-github-com-joho-godotenv")
;;     (version "1.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/joho/godotenv")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1036h59vyhb58n817az6yg0zw5wa87yb86i7fnbdq8cw46mnjgw8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/joho/godotenv"))
;;     (home-page "https://github.com/joho/godotenv")
;;     (synopsis "GoDotEnv")
;;     (description
;;       "Package godotenv is a go port of the ruby dotenv library (https://github.com/bkeepers/dotenv)")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-envy
;;   (package
;;     (name "go-github-com-gobuffalo-envy")
;;     (version "1.9.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/envy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "119lb8i5pzbfwddmrfmjjai9m5np4p485bqxhb82jzsxavzc88m7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/envy"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-rogpeppe-go-internal"
;;          ,go-github-com-rogpeppe-go-internal)
;;         ("go-github-com-joho-godotenv" ,go-github-com-joho-godotenv)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/gobuffalo/envy")
;;     (synopsis "envy")
;;     (description
;;       "package envy makes working with ENV variables in Go trivial.")
;;     (license (list license:expat license:expat))))

;; (define-public go-github-com-gobuffalo-github-flavored-markdown
;;   (package
;;     (name "go-github-com-gobuffalo-github-flavored-markdown")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/github_flavored_markdown")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06aqcyiyaz6gf0y2kdlq6zlrhy9rl5kg276jqk9zz9zw4p0zkj9p"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/gobuffalo/github_flavored_markdown"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-sourcegraph-syntaxhighlight"
;;          ,go-github-com-sourcegraph-syntaxhighlight)
;;         ("go-github-com-sourcegraph-annotate"
;;          ,go-github-com-sourcegraph-annotate)
;;         ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
;;         ("go-github-com-microcosm-cc-bluemonday"
;;          ,go-github-com-microcosm-cc-bluemonday)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
;;     (home-page "https://github.com/gobuffalo/github_flavored_markdown")
;;     (synopsis "a GitHub Flavored Markdown renderer")
;;     (description
;;      "GitHub Flavored Markdown renderer with fenced code block highlighting, 
;;       clickable header anchor links.")
;;     (license #f)))

;; (define-public go-github-com-fatih-structs
;;   (package
;;     (name "go-github-com-fatih-structs")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/fatih/structs")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wrhb8wp8zpzggl61lapb627lw8yv281abvr6vqakmf569nswa9q"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/fatih/structs"))
;;     (home-page "https://github.com/fatih/structs")
;;     (synopsis "Structs")
;;     (description
;;       "Package structs contains various utilities functions to work with structs.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-flect
;;   (package
;;     (name "go-github-com-gobuffalo-flect")
;;     (version "0.2.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/flect")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0j8mqkdkk3ckv74jzns7lsm0d2jk5nqdvwlfh4dq4igkxg8554ar"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/flect"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/gobuffalo/flect")
;;     (synopsis "Flect")
;;     (description
;;       "Package flect is a new inflection engine to replace https://github.com/markbates/inflect
;;        designed to be more modular, more readable, and easier to fix issues on than the original.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-validate-v3
;;   (package
;;     (name "go-github-com-gobuffalo-validate-v3")
;;     (version "3.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/validate")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10vird2vhfijrdxbwxl8qvwfa9rk5cxv2yiz1dh09pr20qgdxp9l"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/validate/v3"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-gofrs-uuid" ,go-github-com-gofrs-uuid)
;;         ("go-github-com-gobuffalo-flect" ,go-github-com-gobuffalo-flect)))
;;     (home-page "https://github.com/gobuffalo/validate")
;;     (synopsis "github.com/gobuffalo/validate")
;;     (description
;;       "This package provides a framework for writing validations for Go applications.  
;;        It does provide you with few validators, but if you need others you can easly build them.")
;;     (license (list license:expat license:expat))))

;; (define-public go-github-com-gofrs-uuid
;;   (package
;;     (name "go-github-com-gofrs-uuid")
;;     (version "4.1.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gofrs/uuid")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1qx0f27nz24ra44qclm3dqqdkwr4wq1y68qc4wvr8z2mdy8k8zpj"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gofrs/uuid"))
;;     (home-page "https://github.com/gofrs/uuid")
;;     (synopsis "UUID")
;;     (description
;;       "Package uuid provides implementations of the Universally Unique Identifier
;;        (UUID), as specified in RFC-4122 and the Peabody RFC Draft (revision 02).")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-tags-v3
;;   (package
;;     (name "go-github-com-gobuffalo-tags-v3")
;;     (version "3.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/tags")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1x83vgm95azy7266p08s40bs4ivs2mz2a8fn9spnx0lj79zjvm2f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/tags/v3"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-gofrs-uuid" ,go-github-com-gofrs-uuid)
;;         ("go-github-com-gobuffalo-validate-v3"
;;          ,go-github-com-gobuffalo-validate-v3)
;;         ("go-github-com-gobuffalo-flect" ,go-github-com-gobuffalo-flect)
;;         ("go-github-com-fatih-structs" ,go-github-com-fatih-structs)))
;;     (home-page "https://github.com/gobuffalo/tags")
;;     (synopsis "Tags")
;;     (description
;;       "Easily build HTML tags in Go! This package is especially useful when using http://gobuffalo.io.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-helpers
;;   (package
;;     (name "go-github-com-gobuffalo-helpers")
;;     (version "0.6.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/helpers")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "12zqianqvk8qinmxq17ms303y9gamsc7pykah459ly0rriwn7q74"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/helpers"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
;;         ("go-github-com-gobuffalo-tags-v3" ,go-github-com-gobuffalo-tags-v3)
;;         ("go-github-com-gobuffalo-github-flavored-markdown"
;;          ,go-github-com-gobuffalo-github-flavored-markdown)
;;         ("go-github-com-gobuffalo-flect" ,go-github-com-gobuffalo-flect)))
;;     (home-page "https://github.com/gobuffalo/helpers")
;;     (synopsis "Helpers")
;;     (description
;;       "Form implements a github.com/gobuffalo/plush helper around the bootstrap.
;;        New function in the github.com/gobuffalo/tags/form/bootstrap package")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-here
;;   (package
;;     (name "go-github-com-gobuffalo-here")
;;     (version "0.6.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/here")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00nvwvz5ia3jrn1ycqyqk3ma74lm7bsyf4d2zv70ikgyyrlyvaa3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/here"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/gobuffalo/here")
;;     (synopsis "Here")
;;     (description
;;       "Here will get you accurate Go information about the directory of package requested.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-plush
;;   (package
;;     (name "go-github-com-gobuffalo-plush")
;;     (version "3.8.3+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/plush")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1bndi85dikibqi335bsyv059h3y3yprn5621pj3m5mzzrqx46bsf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/plush"))
;;     (home-page "https://github.com/gobuffalo/plush")
;;     (synopsis "Plush")
;;     (description
;;       "Plush is the templating system that Go both needs  deserves.  Powerful, flexible, and extendable, 
;;        Plush is there to make writing your templates that much easier.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-genny
;;   (package
;;     (name "go-github-com-gobuffalo-genny")
;;     (version "0.6.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/genny")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1m9pk0dqydm541xn54fq079501jld2xzm0yiaz1qyb9g0jplxfl7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/genny"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-gobuffalo-plush" ,go-github-com-gobuffalo-plush)
;;         ("go-github-com-gobuffalo-packr-v2" ,go-github-com-gobuffalo-packr-v2)
;;         ("go-github-com-gobuffalo-packd" ,go-github-com-gobuffalo-packd)
;;         ("go-github-com-gobuffalo-logger" ,go-github-com-gobuffalo-logger)
;;         ("go-github-com-gobuffalo-here" ,go-github-com-gobuffalo-here)
;;         ("go-github-com-gobuffalo-helpers" ,go-github-com-gobuffalo-helpers)
;;         ("go-github-com-gobuffalo-flect" ,go-github-com-gobuffalo-flect)
;;         ("go-github-com-gobuffalo-envy" ,go-github-com-gobuffalo-envy)))
;;     (home-page "https://github.com/gobuffalo/genny")
;;     (synopsis "Genny")
;;     (description
;;       "Package genny is a _framework_ for writing modular generators, it however, doesn't actually 
;;        generate anything.  It just makes it easier for you to. :)")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-gogen
;;   (package
;;     (name "go-github-com-gobuffalo-gogen")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/gogen")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1245visnr2f3gah7cry4v48xxmy43rik813dxfzhmjq1jx03k1j2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/gogen"))
;;     (home-page "https://github.com/gobuffalo/gogen")
;;     (synopsis "Deprecated, please use github.com/gobuffalo/genny/gogen package instead.")
;;     (description "Deprecated, please use github.com/gobuffalo/genny/gogen package instead.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-logger
;;   (package
;;     (name "go-github-com-gobuffalo-logger")
;;     (version "1.0.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/logger")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07rddd113jnx2c3izpazi0slnp23ibf6bglnjj1by3wixfbwhsn0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/logger"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-term" ,go-golang-org-x-term)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)))
;;     (home-page "https://github.com/gobuffalo/logger")
;;     (synopsis "Logger")
;;     (description
;;       "The (code logger.Logger) interface is used throughout Buffalo apps, and other systems,
;;        to log a whole manner of things.")
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-packd
;;   (package
;;     (name "go-github-com-gobuffalo-packd")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/packd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zlwli008rpijvgxhsw4zpz8shz8l8m0548cj9sf78wd3skgp383"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/packd"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/gobuffalo/packd")
;;     (synopsis "github.com/gobuffalo/packd")
;;     (description
;;       "This is a collection of interfaces designed to make using github.com/gobuffalo/packr easier, 
;;        and to make the transition between v1 and v2 as seamless as possible.")
;;     (license license:expat)))

;; (define-public go-github-com-konsorten-go-windows-terminal-sequences
;;   (package
;;     (name "go-github-com-konsorten-go-windows-terminal-sequences")
;;     (version "1.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/konsorten/go-windows-terminal-sequences")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1yrsd4s8vhjnxhwbigirymz89dn6qfjnhn28i33vvvdgf96j6ypl"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/konsorten/go-windows-terminal-sequences"))
;;     (home-page "https://github.com/konsorten/go-windows-terminal-sequences")
;;     (synopsis "Windows Terminal Sequences")
;;     (description
;;       "This library allow for enabling Windows terminal color support for Go.")
;;     (license license:expat)))

;; (define-public go-github-com-markbates-errx
;;   (package
;;     (name "go-github-com-markbates-errx")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/markbates/errx")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16wfypkjy0h4809943d8j9aq4ry275dkvksivwsj4bydjdn0hxgq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/markbates/errx"))
;;     (home-page "https://github.com/markbates/errx")
;;     (synopsis #f) ;; no text in the repo
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-markbates-oncer
;;   (package
;;     (name "go-github-com-markbates-oncer")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/markbates/oncer")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "042h8rbykpbqdjrp2aba49zv64q1dkh86rp2lqhicxi0g5c06dy5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/markbates/oncer"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/markbates/oncer")
;;     (synopsis #f) ;; no text in the repo
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-markbates-safe
;;   (package
;;     (name "go-github-com-markbates-safe")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/markbates/safe")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0kvhbyyf2gz0gkhql8qz5x9w366q73z55ayy3czj84iqhif2s2kh"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/markbates/safe"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/markbates/safe")
;;     (synopsis #f) ;; no text in the repo
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-gobuffalo-packr-v2
;;   (package
;;     (name "go-github-com-gobuffalo-packr-v2")
;;     (version "2.8.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gobuffalo/packr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1hqn2knfnv72nsbjh0g7igy0x3ycf4s50f45643s0zjpj1axbxcj"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gobuffalo/packr/v2"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-rogpeppe-go-internal"
;;          ,go-github-com-rogpeppe-go-internal)
;;         ("go-github-com-markbates-safe" ,go-github-com-markbates-safe)
;;         ("go-github-com-markbates-oncer" ,go-github-com-markbates-oncer)
;;         ("go-github-com-markbates-errx" ,go-github-com-markbates-errx)
;;         ("go-github-com-konsorten-go-windows-terminal-sequences"
;;          ,go-github-com-konsorten-go-windows-terminal-sequences)
;;         ("go-github-com-karrick-godirwalk" ,go-github-com-karrick-godirwalk)
;;         ("go-github-com-gobuffalo-packd" ,go-github-com-gobuffalo-packd)
;;         ("go-github-com-gobuffalo-logger" ,go-github-com-gobuffalo-logger)))
;;     (home-page "https://github.com/gobuffalo/packr")
;;     (synopsis "Packr (v2)")
;;     (description
;;       "Packr is a simple solution for bundling static assets inside of Go binaries.  
;;        Most importantly it does it in a way that is friendly to developers while they are developing.")
;;     (license license:expat)))

;; (define-public go-github-com-karrick-godirwalk
;;   (package
;;     (name "go-github-com-karrick-godirwalk")
;;     (version "1.16.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/karrick/godirwalk")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05662p8kqws6rxcsd59xdzc3flfjdmdig0ppq6nhdhxr90pblqkq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/karrick/godirwalk"))
;;     (home-page "https://github.com/karrick/godirwalk")
;;     (synopsis "godirwalk")
;;     (description
;;       "Package godirwalk provides functions to read and traverse directory trees.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-montanaflynn-stats
;;   (package
;;     (name "go-github-com-montanaflynn-stats")
;;     (version "0.6.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/montanaflynn/stats")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0r0ad2275saw79kgh3ywafii8f6rja2z6mzm9izs11k2lvkqpz6z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/montanaflynn/stats"))
;;     (home-page "https://github.com/montanaflynn/stats")
;;     (synopsis "Stats - Golang Statistics Package")
;;     (description
;;       "Package stats is a well tested and comprehensive statistics library package with no dependencies.")
;;     (license license:expat)))

;; (define-public go-github-com-tidwall-pretty
;;   (package
;;     (name "go-github-com-tidwall-pretty")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/tidwall/pretty")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11zi5hxb75yapgxq67r4lmv8n910iqmw7994ig1fy4gnr4d51i3s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tidwall/pretty"))
;;     (home-page "https://github.com/tidwall/pretty")
;;     (synopsis "Pretty")
;;     (description
;;       "Pretty is a Go package that provides fast methods for formatting JSON for human readability, 
;;        or to compact JSON for smaller payloads.")
;;     (license license:expat)))

;; (define-public go-github-com-youmark-pkcs8
;;   (package
;;     (name "go-github-com-youmark-pkcs8")
;;     (version "0.0.0-20201027041543-1326539a0a0a")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/youmark/pkcs8")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1bk20x279iiafxh39v75hrmxncbkmw17603g8xw5b59cqzzpnrmv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/youmark/pkcs8"))
;;     (propagated-inputs `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/youmark/pkcs8")
;;     (synopsis "pkcs8")
;;     (description
;;       "Package pkcs8 implements functions to parse and convert private keys in PKCS#8 format, 
;;        as defined in RFC5208 and RFC5958")
;;     (license license:expat)))

;; (define-public go-go-mongodb-org-mongo-driver
;;   (package
;;     (name "go-go-mongodb-org-mongo-driver")
;;     (version "1.7.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mongodb/mongo-go-driver")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jwwn8z0i8dgnw8i67zi597r4a5ry27hcdiq6nx0w3qm0gncm9fw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.mongodb.org/mongo-driver"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-youmark-pkcs8" ,go-github-com-youmark-pkcs8)
;;         ("go-github-com-xdg-go-stringprep" ,go-github-com-xdg-go-stringprep)
;;         ("go-github-com-xdg-go-scram" ,go-github-com-xdg-go-scram)
;;         ("go-github-com-tidwall-pretty" ,go-github-com-tidwall-pretty)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-pelletier-go-toml" ,go-github-com-pelletier-go-toml)
;;         ("go-github-com-montanaflynn-stats" ,go-github-com-montanaflynn-stats)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-karrick-godirwalk" ,go-github-com-karrick-godirwalk)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-gobuffalo-packr-v2" ,go-github-com-gobuffalo-packr-v2)
;;         ("go-github-com-gobuffalo-gogen" ,go-github-com-gobuffalo-gogen)
;;         ("go-github-com-gobuffalo-genny" ,go-github-com-gobuffalo-genny)
;;         ("go-github-com-go-stack-stack" ,go-github-com-go-stack-stack)))
;;     (home-page "https://go.mongodb.org/mongo-driver")
;;     (synopsis "MongoDB Go Driver")
;;     (description "The MongoDB supported driver for Go.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-go-openapi-strfmt
;;   (package
;;     (name "go-github-com-go-openapi-strfmt")
;;     (version "0.20.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-openapi/strfmt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16y9rpg2larin06kxbc34c0kqa0ncld7prynvvc283d0bzl9xp8a"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-openapi/strfmt"))
;;     (propagated-inputs
;;       `(("go-go-mongodb-org-mongo-driver" ,go-go-mongodb-org-mongo-driver)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-oklog-ulid" ,go-github-com-oklog-ulid)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-go-openapi-errors" ,go-github-com-go-openapi-errors)
;;         ("go-github-com-asaskevich-govalidator"
;;          ,go-github-com-asaskevich-govalidator)))
;;     (home-page "https://github.com/go-openapi/strfmt")
;;     (synopsis "Strfmt")
;;     (description "Package strfmt contains custom string formats")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jedib0t-go-pretty
;;   (package
;;     (name "go-github-com-jedib0t-go-pretty")
;;     (version "4.3.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jedib0t/go-pretty")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0bhclbvh8d3in9rm63rhvjamgz8301rryhx66pwg1mk8fn263zim"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jedib0t/go-pretty"))
;;     (home-page "https://github.com/jedib0t/go-pretty")
;;     (synopsis "go-pretty")
;;     (description
;;       "Utilities to prettify console output of tables, lists, text, etc.")
;;     (license license:expat)))

;; (define-public go-github-com-uber-go-tally
;;   (package
;;     (name "go-github-com-uber-go-tally")
;;     (version "3.4.2+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber-go/tally")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1xg1pajk1f3sd92ai40wl7ryy9913fr9rkm9bvvykxi59w23sb86"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/uber-go/tally"))
;;     (home-page "https://github.com/uber-go/tally")
;;     (synopsis "Fast, buffered, hierarchical stats collection in Go.")
;;     (description "A Go metrics interface with fast buffered metrics and third party reporters.")
;;     (license license:expat)))

;; (define-public go-github-com-xwb1989-sqlparser
;;   (package
;;     (name "go-github-com-xwb1989-sqlparser")
;;     (version "0.0.0-20180606152119-120387863bf2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xwb1989/sqlparser")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0l24xm4r76yy376vr2nv81xn4cr9c7lvgg5j5yjz3a5wmrsdzqj0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xwb1989/sqlparser"))
;;     (home-page "https://github.com/xwb1989/sqlparser")
;;     (synopsis "sqlparser")
;;     (description "Go package for parsing MySQL SQL queries.")
;;     (license license:asl2.0)))

;; (define-public go-go-uber-org-config
;;   (package
;;     (name "go-go-uber-org-config")
;;     (version "1.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber-go/config")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "199yw8v30w3ywqhlhgv2c2qhwn3gs59d9w5y5fzznshxg0pyx0mk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.uber.org/config"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://go.uber.org/config")
;;     (synopsis "Convenient, injection-friendly YAML configuration.")
;;     (description
;;       "Package config is an encoding-agnostic configuration abstraction.  It
;;        supports merging multiple configuration files, expanding environment
;;        variables, and a variety of other small niceties.  It currently supports
;;        YAML, but may be extended in the future to support more restrictive
;;        encodings like JSON or TOML.")
;;     (license license:expat)))

;; (define-public go-go-uber-org-dig
;;   (package
;;     (name "go-go-uber-org-dig")
;;     (version "1.13.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber-go/dig")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0alcv3z8k38z6lsqpw069k6yrfii37s4n1dcbiy9w06qy6xfxws9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.uber.org/dig"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://go.uber.org/dig")
;;     (synopsis "A reflection based dependency injection toolkit for Go.")
;;     (description
;;       "Package dig provides an opinionated way of resolving object dependencies.")
;;     (license license:expat)))

;; (define-public go-go-uber-org-goleak
;;   (package
;;     (name "go-go-uber-org-goleak")
;;     (version "1.1.12")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber-go/goleak")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wda3bd5xqbnvskgpr2lg6ccnrm3v9wl0i5c5b6xrrzf01b81vzg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.uber.org/goleak"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)))
;;     (home-page "https://go.uber.org/goleak")
;;     (synopsis "goleak")
;;     (description "Package goleak is a Goroutine leak detector.")
;;     (license license:expat)))

;; (define-public go-go-uber-org-fx
;;   (package
;;     (name "go-go-uber-org-fx")
;;     (version "1.14.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber-go/fx")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1yls3jraxkmqm1i3510qsf33qakc957vv934jwkvl382i2hkq3zf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.uber.org/fx"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-go-uber-org-goleak" ,go-go-uber-org-goleak)
;;         ("go-go-uber-org-dig" ,go-go-uber-org-dig)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://go.uber.org/fx")
;;     (synopsis "ð\x9f¦\x84 Fx")
;;     (description
;;       "Package fx is a framework that makes it easy to build applications out of
;;        reusable, composable modules.")
;;     (license license:expat)))

;; (define-public go-github-com-uber-athenadriver
;;   (package
;;     (name "go-github-com-uber-athenadriver")
;;     (version "1.1.13")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/uber/athenadriver")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1kr4nrbi75x66sfhmdk3h3s4lvj3igfxmyy7wxlv16i80r15ydq8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/uber/athenadriver"))
;;     (propagated-inputs
;;       `(("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-fx" ,go-go-uber-org-fx)
;;         ("go-go-uber-org-config" ,go-go-uber-org-config)
;;         ("go-github-com-xwb1989-sqlparser" ,go-github-com-xwb1989-sqlparser)
;;         ("go-github-com-uber-go-tally" ,go-github-com-uber-go-tally)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
;;         ("go-github-com-jedib0t-go-pretty" ,go-github-com-jedib0t-go-pretty)
;;         ("go-github-com-go-openapi-strfmt" ,go-github-com-go-openapi-strfmt)
;;         ("go-github-com-cactus-go-statsd-client-statsd"
;;          ,go-github-com-cactus-go-statsd-client-statsd)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-data-dog-go-sqlmock"
;;          ,go-github-com-data-dog-go-sqlmock)))
;;     (home-page "https://github.com/uber/athenadriver")
;;     (synopsis "A fully-featured AWS Athena database driver (+ athenareader)")
;;     (description
;;       "athenadriver - A fully-featured AWS Athena database driver for Go
;;        athenareader - A moneywise command line utililty to query athena in command line.")
;;     (license license:expat)))

;; (define-public go-github-com-uber-jaeger-lib
;;   (package
;;     (name "go-github-com-uber-jaeger-lib")
;;     (version "2.4.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jaegertracing/jaeger-lib")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "15871xzc7qs00yy5bv1gzdv4xlfws68bhb70m4k5p5n41060ppj0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/uber/jaeger-lib"))
;;     (home-page "https://github.com/uber/jaeger-lib")
;;     (synopsis "jaeger-lib")
;;     (description
;;       "Package jaegerlib is a set of utilities shared by Jaeger backend and Jaeger Go Client.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-google-martian-v3
;;   (package
;;     (name "go-github-com-google-martian-v3")
;;     (version "3.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/martian")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ylsicpiaprq6yvgbl4qiclvj4xsnsmjsjmyi21rqgxhnvyjbfyf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/martian/v3"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc-cmd-protoc-gen-go-grpc"
;;          ,go-google-golang-org-grpc-cmd-protoc-gen-go-grpc)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/google/martian")
;;     (synopsis "Martian Proxy")
;;     (description
;;       "Package martian provides an HTTP/1.1 proxy with an API for configurable
;;        request and response ")
;;     (license license:asl2.0)))

;; (define-public go-cloud-google-com-go
;;   (package
;;     (name "go-cloud-google-com-go")
;;     (version "0.97.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/google-cloud-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0c19r1l1m1ngjkm2pcryq9rv8r2l3hx3am2zy3j2ayp73gr50vix"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "cloud.google.com/go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-googleapis-gax-go-v2"
;;          ,go-github-com-googleapis-gax-go-v2)
;;         ("go-github-com-google-martian-v3" ,go-github-com-google-martian-v3)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-cloud-google-com-go-storage" ,go-cloud-google-com-go-storage)))
;;     (home-page "https://cloud.google.com/go")
;;     (synopsis "Google Cloud Client Libraries for Go")
;;     (description
;;       "Package cloud is the root of the packages used to access Google Cloud Services.
;;        See https://godoc.org/cloud.google.com/go for a full list of sub-packages.")
;;     (license license:asl2.0)))

;; (define-public go-cloud-google-com-go-bigtable
;;   (package
;;     (name "go-cloud-google-com-go-bigtable")
;;     (version "0.97.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/google-cloud-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0c19r1l1m1ngjkm2pcryq9rv8r2l3hx3am2zy3j2ayp73gr50vix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "cloud.google.com/go/bigtable"
;;        #:unpack-path "cloud.google.com/go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-googleapis-gax-go-v2"
;;          ,go-github-com-googleapis-gax-go-v2)
;;         ("go-github-com-google-martian-v3" ,go-github-com-google-martian-v3)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-cloud-google-com-go-storage" ,go-cloud-google-com-go-storage)))
;;     (home-page "https://cloud.google.com/go")
;;     (synopsis "Google Cloud Client Libraries for Go")
;;     (description
;;       "Package cloud is the root of the packages used to access Google Cloud Services.
;;        See https://godoc.org/cloud.google.com/go for a full list of sub-packages.")
;;     (license license:asl2.0)))

;; (define-public go-cloud-google-com-go-pubsub
;;   (package
;;     (name "go-cloud-google-com-go-pubsub")
;;     (version "0.97.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/google-cloud-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0c19r1l1m1ngjkm2pcryq9rv8r2l3hx3am2zy3j2ayp73gr50vix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "cloud.google.com/go/pubsub"
;;        #:unpack-path "cloud.google.com/go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-googleapis-gax-go-v2"
;;          ,go-github-com-googleapis-gax-go-v2)
;;         ("go-github-com-google-martian-v3" ,go-github-com-google-martian-v3)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-cloud-google-com-go-storage" ,go-cloud-google-com-go-storage)))
;;     (home-page "https://cloud.google.com/go")
;;     (synopsis "Google Cloud Client Libraries for Go")
;;     (description
;;       "Package cloud is the root of the packages used to access Google Cloud Services.
;;        See https://godoc.org/cloud.google.com/go for a full list of sub-packages.")
;;     (license license:asl2.0)))

;; (define-public go-cloud-google-com-go-bigquery
;;   (package
;;     (name "go-cloud-google-com-go-bigquery")
;;     (version "0.97.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/google-cloud-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0c19r1l1m1ngjkm2pcryq9rv8r2l3hx3am2zy3j2ayp73gr50vix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "cloud.google.com/go/bigquery"
;;        #:unpack-path "cloud.google.com/go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-googleapis-gax-go-v2"
;;          ,go-github-com-googleapis-gax-go-v2)
;;         ("go-github-com-google-martian-v3" ,go-github-com-google-martian-v3)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-cloud-google-com-go-storage" ,go-cloud-google-com-go-storage)))
;;     (home-page "https://cloud.google.com/go")
;;     (synopsis "Google Cloud Client Libraries for Go")
;;     (description
;;       "Package cloud is the root of the packages used to access Google Cloud Services.
;;        See https://godoc.org/cloud.google.com/go for a full list of sub-packages.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-googleapis-gax-go-v2
;;   (package
;;     (name "go-github-com-googleapis-gax-go-v2")
;;     (version "2.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/gax-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y959pdc2yqajhk5wxdsvfjkz3pb5ppi6yrcmpy2dkviwhx2kz73"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/googleapis/gax-go/v2"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/googleapis/gax-go")
;;     (synopsis #f)
;;     (description
;;       "Package gax contains a set of modules which aid the development of APIs
;;        for clients and servers based on gRPC and Google API conventions.")
;;     (license license:bsd-3)))

;; (define-public go-google-golang-org-appengine
;;   (package
;;     (name "go-google-golang-org-appengine")
;;     (version "1.6.7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/appengine")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wkipg7xxc0ha5p6c3bj0vpgq38l18441n5l6zxdhx0gzvz5z1hs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "google.golang.org/appengine"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://google.golang.org/appengine")
;;     (synopsis "Go App Engine packages")
;;     (description
;;       "Package appengine provides basic functionality for Google App Engine.")
;;     (license license:asl2.0)))

;; (define-public go-google-golang-org-api
;;   (package
;;     (name "go-google-golang-org-api")
;;     (version "0.58.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/google-api-go-client")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "001f6g75bc9m05wfgz50kmmmk2q04k4fi63kqqh81dd5z6p1ilmc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "google.golang.org/api"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-google-golang-org-appengine" ,go-google-golang-org-appengine)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-github-com-googleapis-gax-go-v2"
;;          ,go-github-com-googleapis-gax-go-v2)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-cloud-google-com-go" ,go-cloud-google-com-go)))
;;     (home-page "https://google.golang.org/api")
;;     (synopsis "Google APIs Client Library for Go")
;;     (description
;;       "Package api is the root of the packages used to access Google Cloud Services.  
;;        See https://godoc.org/google.golang.org/api for a full list of sub-packages.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-influxdata-flux
;;   (package
;;     (name "go-github-com-influxdata-flux")
;;     (version "0.135.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/flux")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1dpkwssr5j0v7jnyax69piii88qkrpm6i0w7bzc6fllakam6gl56"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/flux"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-google-golang-org-api" ,go-google-golang-org-api)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-github-com-uber-jaeger-lib" ,go-github-com-uber-jaeger-lib)
;;         ("go-github-com-uber-jaeger-client-go"
;;          ,go-github-com-uber-jaeger-client-go)
;;         ("go-github-com-uber-athenadriver" ,go-github-com-uber-athenadriver)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-snowflakedb-gosnowflake"
;;          ,go-github-com-snowflakedb-gosnowflake)
;;         ("go-github-com-sergi-go-diff" ,go-github-com-sergi-go-diff)
;;         ("go-github-com-segmentio-kafka-go" ,go-github-com-segmentio-kafka-go)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-pkg-term" ,go-github-com-pkg-term)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)
;;         ("go-github-com-matttproud-golang-protobuf-extensions"
;;          ,go-github-com-matttproud-golang-protobuf-extensions)
;;         ("go-github-com-mattn-go-tty" ,go-github-com-mattn-go-tty)
;;         ("go-github-com-mattn-go-sqlite3" ,go-github-com-mattn-go-sqlite3)
;;         ("go-github-com-mattn-go-runewidth" ,go-github-com-mattn-go-runewidth)
;;         ("go-github-com-lib-pq" ,go-github-com-lib-pq)
;;         ("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-influxdata-tdigest" ,go-github-com-influxdata-tdigest)
;;         ("go-github-com-influxdata-promql-v2"
;;          ,go-github-com-influxdata-promql-v2)
;;         ("go-github-com-influxdata-pkg-config"
;;          ,go-github-com-influxdata-pkg-config)
;;         ("go-github-com-influxdata-line-protocol"
;;          ,go-github-com-influxdata-line-protocol)
;;         ("go-github-com-influxdata-influxdb-client-go-v2"
;;          ,go-github-com-influxdata-influxdb-client-go-v2)
;;         ("go-github-com-inconshreveable-mousetrap"
;;          ,go-github-com-inconshreveable-mousetrap)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-google-flatbuffers" ,go-github-com-google-flatbuffers)
;;         ("go-github-com-golang-geo" ,go-github-com-golang-geo)
;;         ("go-github-com-gofrs-uuid" ,go-github-com-gofrs-uuid)
;;         ("go-github-com-go-sql-driver-mysql"
;;          ,go-github-com-go-sql-driver-mysql)
;;         ("go-github-com-foxcpp-go-mockdns" ,go-github-com-foxcpp-go-mockdns)
;;         ("go-github-com-eclipse-paho-mqtt-golang"
;;          ,go-github-com-eclipse-paho-mqtt-golang)
;;         ("go-github-com-denisenkom-go-mssqldb"
;;          ,go-github-com-denisenkom-go-mssqldb)
;;         ("go-github-com-dave-jennifer" ,go-github-com-dave-jennifer)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)
;;         ("go-github-com-c-bata-go-prompt" ,go-github-com-c-bata-go-prompt)
;;         ("go-github-com-bonitoo-io-go-sql-bigquery"
;;          ,go-github-com-bonitoo-io-go-sql-bigquery)
;;         ("go-github-com-benbjohnson-immutable"
;;          ,go-github-com-benbjohnson-immutable)
;;         ("go-github-com-apache-arrow-go-arrow"
;;          ,go-github-com-apache-arrow-go-arrow)
;;         ("go-github-com-andreyvit-diff" ,go-github-com-andreyvit-diff)
;;         ("go-github-com-sap-go-hdb" ,go-github-com-sap-go-hdb)
;;         ("go-github-com-hdrhistogram-hdrhistogram-go"
;;          ,go-github-com-hdrhistogram-hdrhistogram-go)
;;         ("go-github-com-data-dog-go-sqlmock"
;;          ,go-github-com-data-dog-go-sqlmock)
;;         ("go-github-com-azure-go-autorest-autorest-azure-auth"
;;          ,go-github-com-azure-go-autorest-autorest-azure-auth)
;;         ("go-github-com-azure-go-autorest-autorest-adal"
;;          ,go-github-com-azure-go-autorest-autorest-adal)
;;         ("go-github-com-azure-go-autorest-autorest"
;;          ,go-github-com-azure-go-autorest-autorest)
;;         ("go-cloud-google-com-go-bigtable" ,go-cloud-google-com-go-bigtable)
;;         ("go-cloud-google-com-go" ,go-cloud-google-com-go)))
;;     (home-page "https://github.com/influxdata/flux")
;;     (synopsis "Flux - Influx data language")
;;     (description
;;       "Flux is a lightweight scripting language for querying databases (like InfluxDB) and working with data.
;;        It is part of InfluxDB 1.7 and 2.0, but can be run independently of those.
;;        This repository contains the language definition and an implementation of the language core.")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-httprouter
;;   (package
;;     (name "go-github-com-influxdata-httprouter")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/httprouter")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1a6sy0ysqknsjssjh7qg1dqn21xmj9a36c57nrk7srfmab4ffmk1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/httprouter"))
;;     (home-page "https://github.com/influxdata/httprouter")
;;     (synopsis "HttpRouter")
;;     (description
;;       "Package httprouter is a trie based high performance HTTP request router.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-influxdata-influxql
;;   (package
;;     (name "go-github-com-influxdata-influxql")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/influxql")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y68iv86rsm0v72pflp8lmp0kdf2c8v5ln5wgxmx2ry5camgl7qg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/influxql"))
;;     (home-page "https://github.com/influxdata/influxql")
;;     (synopsis "The Influx Query Language Specification")
;;     (description
;;       "Package influxql implements a parser for the InfluxDB query language.")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-pkg-config
;;   (package
;;     (name "go-github-com-influxdata-pkg-config")
;;     (version "0.2.8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/pkg-config")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05wcnrqglnrymmwzvhh0lfiqy41vd3yd1bp5jw27m7qs4hcwfjwx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/pkg-config"))
;;     (propagated-inputs
;;       `(("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-masterminds-semver"
;;          ,go-github-com-masterminds-semver)))
;;     (home-page "https://github.com/influxdata/pkg-config")
;;     (synopsis "Go Pkg-Config")
;;     (description
;;       "This binary is intended as an easier way to include C code in your Go program.")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-roaring
;;   (package
;;     (name "go-github-com-influxdata-roaring")
;;     (version "0.4.12")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/roaring")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ykx36qqhlpcvjrv6sy71j3ri6prl86vwkq03wni1cp5b6g29ljc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/roaring"))
;;     (home-page "https://github.com/influxdata/roaring")
;;     (synopsis "roaring")
;;     (description
;;       "Package roaring is an implementation of Roaring Bitmaps in Go.
;;        They provide fast compressed bitmap data structures (also called bitset).
;;        They are ideally suited to represent sets of integers over
;;        relatively small ranges.
;;        See http://roaringbitmap.org for details.")
;;     (license (list license:asl2.0 license:asl2.0))))

;; (define-public go-github-com-influxdata-usage-client
;;   (package
;;     (name "go-github-com-influxdata-usage-client")
;;     (version "0.0.0-20160829180054-6d3895376368")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/usage-client")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0a5adnid42f9vpckgcpkj7v60fh147j7zlg1rhxcpq5vkw698ifl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/usage-client"))
;;     (home-page "https://github.com/influxdata/usage-client")
;;     (synopsis "Usage Client")
;;     (description
;;       "The usage-client package is used to speak with the Usage API in a simple
;;        and straight forward way.  No muss, no fuss!")
;;     (license license:expat)))

;; (define-public go-github-com-jsternberg-zap-logfmt
;;   (package
;;     (name "go-github-com-jsternberg-zap-logfmt")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jsternberg/zap-logfmt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0b673k72rwli23xyx4z9gfy7spdgj0s38p9y3hif3xjmrsilw1xb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jsternberg/zap-logfmt"))
;;     (propagated-inputs
;;       `(("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/jsternberg/zap-logfmt")
;;     (synopsis "Logfmt Encoder")
;;     (description
;;       "This package implements logfmt for zap.")
;;     (license license:expat)))

;; (define-public go-github-com-jwilder-encoding
;;   (package
;;     (name "go-github-com-jwilder-encoding")
;;     (version "0.0.0-20170811194829-b4e1701a28ef")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jwilder/encoding")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "195js5njz86k096p3ggglgpc7rw3801mpqzdfwfr3miflhnp7nwg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jwilder/encoding"))
;;     (home-page "https://github.com/jwilder/encoding")
;;     (synopsis "Encoding")
;;     (description "Library for working with compressed arrays of integers.")
;;     (license license:expat)))

;; (define-public go-github-com-klauspost-pgzip
;;   (package
;;     (name "go-github-com-klauspost-pgzip")
;;     (version "1.2.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/klauspost/pgzip")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0m66jcsz27076qvi5qzagzlbyd1sdzh6kbf1njj0sswx86026rx3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/klauspost/pgzip"))
;;     (home-page "https://github.com/klauspost/pgzip")
;;     (synopsis "pgzip")
;;     (description
;;       "Package pgzip implements reading and writing of gzip format compressed files,
;;        as specified in RFC 1952.")
;;     (license license:expat)))

;; (define-public go-github-com-mileusna-useragent
;;   (package
;;     (name "go-github-com-mileusna-useragent")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mileusna/useragent")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gj726089gi25mjq4n6a4n5bs5n9z9676jy4jh2f55v0ad516gbb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mileusna/useragent"))
;;     (home-page "https://github.com/mileusna/useragent")
;;     (synopsis "Go/Golang package for parsing user agent strings")
;;     (description
;;       "Package ua.Parse(userAgent string) function parses browser's 
;;        and bot's user agents strings and determins:")
;;     (license license:expat)))

;; (define-public go-github-com-prometheus-prometheus
;;   (package
;;     (name "go-github-com-prometheus-prometheus")
;;     (version "1.8.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/prometheus/prometheus")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "088flpg3qgnj9afl9vbaa19v2s1d21yxy38nrlv5m7cxwy2pi5pv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/prometheus/prometheus"))
;;     (home-page "https://github.com/prometheus/prometheus")
;;     (synopsis "Prometheus")
;;     (description
;;       "Visit prometheus.io for the full documentation, examples and guides.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-retailnext-hllpp
;;   (package
;;     (name "go-github-com-retailnext-hllpp")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/retailnext/hllpp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mqgyvqil2kza72x2xjw3mpz0l0as7ja0f9cr7vrxr9xwvzkig9i"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/retailnext/hllpp"))
;;     (home-page "https://github.com/retailnext/hllpp")
;;     (synopsis "HyperLogLog++ cardinality estimator")
;;     (description
;;       "hllpp implements the HyperLogLog++ cardinality estimator as specified
;;        in the HyperLogLog++ paper http://goo.gl/Z5Sqgu.  hllpp uses a built-in
;;        non-streaming implementation of murmur3 to hash data as you add it to
;;        the estimator.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-philhofer-fwd
;;   (package
;;     (name "go-github-com-philhofer-fwd")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/philhofer/fwd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1z88ry83lf01mv69kd2jwbhngh24qwhhknj3l5jn2kz5nycq6bkx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/philhofer/fwd"))
;;     (home-page "https://github.com/philhofer/fwd")
;;     (synopsis "fwd")
;;     (description
;;       "The `fwd` package provides a buffered reader and writer. 
;;        Each has methods that help improve the encoding/decoding 
;;        performance of some binary protocols.")
;;     (license license:expat)))

;; (define-public go-github-com-tinylib-msgp
;;   (package
;;     (name "go-github-com-tinylib-msgp")
;;     (version "1.1.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/tinylib/msgp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "04s5wkl0qiihl729d1sc10pxnqi0x4xdq6v2dbdgly4j910qsgdd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tinylib/msgp"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-philhofer-fwd" ,go-github-com-philhofer-fwd)))
;;     (home-page "https://github.com/tinylib/msgp")
;;     (synopsis "MessagePack Code Generator")
;;     (description
;;       "msgp is a code generation tool for creating methods to serialize and de-serialize
;;        Go data structures to and from MessagePack.")
;;     (license license:expat)))

;; (define-public go-github-com-uber-jaeger-client-go
;;   (package
;;     (name "go-github-com-uber-jaeger-client-go")
;;     (version "2.29.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jaegertracing/jaeger-client-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "169c1mhxxf6gjc7kf411m9rpjz6a1zif0bcf1iwwfwnwp3w0kq55"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/uber/jaeger-client-go"))
;;     (home-page "https://github.com/uber/jaeger-client-go")
;;     (synopsis "Jaeger Bindings for Go OpenTracing API")
;;     (description
;;       "Package jaeger implements an OpenTracing (http://opentracing.io) Tracer.
;;        It is currently using Zipkin-compatible data model and can be directly
;;        itegrated with Zipkin backend (http://zipkin.io).")
;;     (license license:asl2.0)))

;; (define-public go-github-com-xlab-treeprint
;;   (package
;;     (name "go-github-com-xlab-treeprint")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xlab/treeprint")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "172hcg6316ghvin9cqgidg7kdf960mzbqlrg0gk759pkbqsi3bcy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xlab/treeprint"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/xlab/treeprint")
;;     (synopsis "treeprint")
;;     (description
;;       "Package treeprint provides a simple ASCII tree composing tool.")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-influxdb
;;   (package
;;     (name "go-github-com-influxdata-influxdb")
;;     (version "1.9.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/influxdb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0v6327jq8rv9dgjxp582byk5nzy37fbyrq7wj4ni2bs51c38mqjm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/influxdb"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-github-com-xlab-treeprint" ,go-github-com-xlab-treeprint)
;;         ("go-github-com-willf-bitset" ,go-github-com-willf-bitset)
;;         ("go-github-com-uber-jaeger-client-go"
;;          ,go-github-com-uber-jaeger-client-go)
;;         ("go-github-com-tinylib-msgp" ,go-github-com-tinylib-msgp)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-spf13-cast" ,go-github-com-spf13-cast)
;;         ("go-github-com-retailnext-hllpp" ,go-github-com-retailnext-hllpp)
;;         ("go-github-com-prometheus-prometheus"
;;          ,go-github-com-prometheus-prometheus)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-peterh-liner" ,go-github-com-peterh-liner)
;;         ("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)
;;         ("go-github-com-mileusna-useragent" ,go-github-com-mileusna-useragent)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-klauspost-pgzip" ,go-github-com-klauspost-pgzip)
;;         ("go-github-com-jwilder-encoding" ,go-github-com-jwilder-encoding)
;;         ("go-github-com-jsternberg-zap-logfmt"
;;          ,go-github-com-jsternberg-zap-logfmt)
;;         ("go-github-com-influxdata-usage-client"
;;          ,go-github-com-influxdata-usage-client)
;;         ("go-github-com-influxdata-roaring" ,go-github-com-influxdata-roaring)
;;         ("go-github-com-influxdata-pkg-config"
;;          ,go-github-com-influxdata-pkg-config)
;;         ("go-github-com-influxdata-influxql"
;;          ,go-github-com-influxdata-influxql)
;;         ("go-github-com-influxdata-httprouter"
;;          ,go-github-com-influxdata-httprouter)
;;         ("go-github-com-influxdata-flux" ,go-github-com-influxdata-flux)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-mock" ,go-github-com-golang-mock)
;;         ("go-github-com-golang-jwt-jwt" ,go-github-com-golang-jwt-jwt)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-go-chi-chi" ,go-github-com-go-chi-chi)
;;         ("go-github-com-dgryski-go-bitstream"
;;          ,go-github-com-dgryski-go-bitstream)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-cespare-xxhash" ,go-github-com-cespare-xxhash)
;;         ("go-github-com-bmizerany-pat" ,go-github-com-bmizerany-pat)
;;         ("go-github-com-benbjohnson-tmpl" ,go-github-com-benbjohnson-tmpl)
;;         ("go-github-com-apache-arrow-go-arrow"
;;          ,go-github-com-apache-arrow-go-arrow)
;;         ("go-github-com-burntsushi-toml" ,go-github-com-burntsushi-toml)
;;         ("go-collectd-org" ,go-collectd-org)))
;;     (home-page "https://github.com/influxdata/influxdb")
;;     (synopsis "InfluxDB")
;;     (description
;;       "Package influxdb is the root package of InfluxDB,
;;        the scalable datastore for metrics, events, and real-time analytics.")
;;     (license license:expat)))

;; (define-public go-github-com-cyberdelia-templates
;;   (package
;;     (name "go-github-com-cyberdelia-templates")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cyberdelia/templates")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11lq70wzh4rf2ysmdsyqbbs5rb8k3mm9ca4fglr156qcyc7p8ffc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cyberdelia/templates"))
;;     (home-page "https://github.com/cyberdelia/templates")
;;     (synopsis "Templates allows you to bundle file template in your binary.")
;;     (description
;;       "This library is now obsolete, please use: https://golang.org/pkg/embed/")
;;     (license license:expat)))

;; (define-public go-github-com-shurcool-go-goon
;;   (package
;;     (name "go-github-com-shurcool-go-goon")
;;     (version "0.0.0-20210110234559-7585751d9a17")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shurcooL/go-goon")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1c0gkv255kjbbcx3ab26driihnq685vp08axrp5ls8vq7g67rrwl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shurcooL/go-goon"))
;;     (home-page "https://github.com/shurcooL/go-goon")
;;     (synopsis "goon")
;;     (description
;;       "Package goon is a deep pretty printer with Go-like notation.  It implements the goon specification.")
;;     (license license:expat)))

;; (define-public go-github-com-sourcegraph-go-diff
;;   (package
;;     (name "go-github-com-sourcegraph-go-diff")
;;     (version "0.6.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sourcegraph/go-diff")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ic58wi4cac61kh5sasn9iylcbzbqawlzva964rk0y0nifsyjcmc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/sourcegraph/go-diff"))
;;     (propagated-inputs
;;       `(("go-github-com-shurcool-go-goon" ,go-github-com-shurcool-go-goon)
;;         ("go-github-com-shurcool-go" ,go-github-com-shurcool-go)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/sourcegraph/go-diff")
;;     (synopsis "go-diff")
;;     (description "Diff parser and printer for Go.")
;;     (license license:expat)))

;; (define-public go-github-com-go-openapi-swag
;;   (package
;;     (name "go-github-com-go-openapi-swag")
;;     (version "0.19.15")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-openapi/swag")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0fyz1wclcc776qwh6qnnajgfa3l8rwp3y6dzyrfb8cfnc3j0jqim"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-openapi/swag"))
;;     (propagated-inputs
;;       `(("go-github-com-sourcegraph-go-diff"
;;          ,go-github-com-sourcegraph-go-diff)
;;         ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;         ("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-niemeyer-pretty" ,go-github-com-niemeyer-pretty)
;;         ("go-github-com-mailru-easyjson" ,go-github-com-mailru-easyjson)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/go-openapi/swag")
;;     (synopsis "Swag")
;;     (description
;;       "Package swag contains a bunch of helper functions for go-openapi and go-swagger projects.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-josharian-intern
;;   (package
;;     (name "go-github-com-josharian-intern")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/josharian/intern")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1za48ppvwd5vg8vv25ldmwz1biwpb3p6qhf8vazhsfdg9m07951c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/josharian/intern"))
;;     (home-page "https://github.com/josharian/intern")
;;     (synopsis "Intern Go strings")
;;     (description
;;       "Package intern interns strings. Interning is best effort only. Interned strings may be removed
;;        automatically at any time without notification. All functions may be called concurrently
;;        with themselves and each other.")
;;     (license license:expat)))

;; (define-public go-github-com-mailru-easyjson
;;   (package
;;     (name "go-github-com-mailru-easyjson")
;;     (version "0.7.7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mailru/easyjson")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0clifkvvy8f45rv3cdyv58dglzagyvfcqb63wl6rij30c5j2pzc1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mailru/easyjson"))
;;     (propagated-inputs
;;       `(("go-github-com-josharian-intern" ,go-github-com-josharian-intern)))
;;     (home-page "https://github.com/mailru/easyjson")
;;     (synopsis "easyjson")
;;     (description
;;       "Package easyjson contains marshaler/unmarshaler interfaces and helper functions.")
;;     (license license:expat)))

;; (define-public go-github-com-go-openapi-jsonpointer
;;   (package
;;     (name "go-github-com-go-openapi-jsonpointer")
;;     (version "0.19.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-openapi/jsonpointer")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0azic9nfwywlz4qxvacyi4g668fbbrkcyv15bag02yfcsi8szg5c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-openapi/jsonpointer"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mailru-easyjson" ,go-github-com-mailru-easyjson)
;;         ("go-github-com-go-openapi-swag" ,go-github-com-go-openapi-swag)))
;;     (home-page "https://github.com/go-openapi/jsonpointer")
;;     (synopsis "gojsonpointer")
;;     (description
;;       "An implementation of JSON Pointer - Go language")
;;     (license license:asl2.0)))

;; (define-public go-github-com-getkin-kin-openapi
;;   (package
;;     (name "go-github-com-getkin-kin-openapi")
;;     (version "0.79.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/getkin/kin-openapi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05r8lqjni6c72kkc5wxxmmri0yhlgcqwpza7j07lflxqjwcbd6n7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/getkin/kin-openapi"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)
;;         ("go-github-com-go-openapi-jsonpointer"
;;          ,go-github-com-go-openapi-jsonpointer)
;;         ("go-github-com-ghodss-yaml" ,go-github-com-ghodss-yaml)))
;;     (home-page "https://github.com/getkin/kin-openapi")
;;     (synopsis "Introduction")
;;     (description
;;       "This package provides a Go project for handling OpenAPI files.  We target the latest OpenAPI
;;        version (currently 3), but the project contains support for older OpenAPI versions too.")
;;     (license license:expat)))

;; (define-public go-github-com-go-chi-chi-v5
;;   (package
;;     (name "go-github-com-go-chi-chi-v5")
;;     (version "5.0.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-chi/chi")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "19vla0c89n4a9i83rynhakainyn01wrz1wq629lh5im0mpan6bsa"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-chi/chi/v5"))
;;     (home-page "https://github.com/go-chi/chi")
;;     (synopsis #f)
;;     (description
;;       "Package chi is a small, idiomatic and composable router for building HTTP services.")
;;     (license license:expat)))

;; (define-public go-github-com-golang-jwt-jwt
;;   (package
;;     (name "go-github-com-golang-jwt-jwt")
;;     (version "3.2.2+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang-jwt/jwt")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hq8wz11g6kddx9ab0icl5h3k4lrivk1ixappnr5db2ng2wjks9c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang-jwt/jwt"))
;;     (home-page "https://github.com/golang-jwt/jwt")
;;     (synopsis "jwt-go")
;;     (description
;;       "Package jwt is a Go implementation of JSON Web Tokens: 
;;        http://self-issued.info/docs/draft-jones-json-web-token.html")
;;     (license license:expat)))

;; (define-public go-github-com-labstack-gommon
;;   (package
;;     (name "go-github-com-labstack-gommon")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/labstack/gommon")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18z7akyzm75p6anm4b8qkqgm4iivx50z07hi5wf50w1pbsvbcdi0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/labstack/gommon"))
;;     (propagated-inputs
;;       `(("go-github-com-valyala-fasttemplate"
;;          ,go-github-com-valyala-fasttemplate)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable"
;;          ,go-github-com-mattn-go-colorable)))
;;     (home-page "https://github.com/labstack/gommon")
;;     (synopsis "Gommon")
;;     (description "Common packages for Go")
;;     (license license:expat)))

;; (define-public go-github-com-valyala-bytebufferpool
;;   (package
;;     (name "go-github-com-valyala-bytebufferpool")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/valyala/bytebufferpool")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01lqzjddq6kz9v41nkky7wbgk7f1cw036sa7ldz10d82g5klzl93"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/valyala/bytebufferpool"))
;;     (home-page "https://github.com/valyala/bytebufferpool")
;;     (synopsis "bytebufferpool")
;;     (description
;;       "Package bytebufferpool implements a pool of byte buffers
;;        with anti-fragmentation protection.")
;;     (license license:expat)))

;; (define-public go-github-com-valyala-fasttemplate
;;   (package
;;     (name "go-github-com-valyala-fasttemplate")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/valyala/fasttemplate")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0bd1hxxg1bzx307adpd1s4yjaa6q51cqk4qvqskfflxvgll79vdn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/valyala/fasttemplate"))
;;     (propagated-inputs
;;       `(("go-github-com-valyala-bytebufferpool"
;;          ,go-github-com-valyala-bytebufferpool)))
;;     (home-page "https://github.com/valyala/fasttemplate")
;;     (synopsis "fasttemplate")
;;     (description
;;       "Package fasttemplate implements simple and fast template library.")
;;     (license license:expat)))

;; (define-public go-github-com-labstack-echo-v4
;;   (package
;;     (name "go-github-com-labstack-echo-v4")
;;     (version "4.6.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/labstack/echo")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0j6q2axjr5aslq76xbacpl7wiimz2cx6ask1lhi7didmzmm3349g"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/labstack/echo/v4"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-valyala-fasttemplate"
;;          ,go-github-com-valyala-fasttemplate)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-labstack-gommon" ,go-github-com-labstack-gommon)
;;         ("go-github-com-golang-jwt-jwt" ,go-github-com-golang-jwt-jwt)))
;;     (home-page "https://github.com/labstack/echo")
;;     (synopsis "Supported Go versions")
;;     (description
;;       "Package echo implements high performance, minimalist Go web framework.")
;;     (license license:expat)))

;; (define-public go-github-com-matryer-moq
;;   (package
;;     (name "go-github-com-matryer-moq")
;;     (version "0.2.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/matryer/moq")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1mw44iqlapm4iwsz7jmg8z28wlg3kd32n5i60rp1pdd8hc5mhd0z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/matryer/moq"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-pmezard-go-difflib"
;;          ,go-github-com-pmezard-go-difflib)))
;;     (home-page "https://github.com/matryer/moq")
;;     (synopsis "What is Moq?")
;;     (description "Interface mocking tool for go generate.")
;;     (license license:expat)))

;; (define-public go-github-com-deepmap-oapi-codegen
;;   (package
;;     (name "go-github-com-deepmap-oapi-codegen")
;;     (version "1.8.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/deepmap/oapi-codegen")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05zfbcfyl8vvx6iiaxsybs5k54vi0rysj38fl7626kfpackmy2sl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/deepmap/oapi-codegen"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-matryer-moq" ,go-github-com-matryer-moq)
;;         ("go-github-com-labstack-echo-v4" ,go-github-com-labstack-echo-v4)
;;         ("go-github-com-golangci-lint-1" ,go-github-com-golangci-lint-1)
;;         ("go-github-com-go-chi-chi-v5" ,go-github-com-go-chi-chi-v5)
;;         ("go-github-com-getkin-kin-openapi" ,go-github-com-getkin-kin-openapi)
;;         ("go-github-com-cyberdelia-templates"
;;          ,go-github-com-cyberdelia-templates)))
;;     (home-page "https://github.com/deepmap/oapi-codegen")
;;     (synopsis "OpenAPI Client and Server Code Generator")
;;     (description
;;       "This package contains a set of utilities for generating Go boilerplate code for
;;        services based on OpenAPI 3.0  API definitions.  When working with services, 
;;        it's important to have an API contract which servers and clients both implement 
;;        to minimize the chances of incompatibilities.  It's tedious to generate Go models 
;;        which precisely correspond to OpenAPI specifications, so let our code generator 
;;        do that work for you, so that you can focus on implementing the business logic 
;;        for your service.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-golangci-lint-1
;;   (package
;;     (name "go-github-com-golangci-lint-1")
;;     (version "0.0.0-20180902080404-c2187e7932b5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golangci/lint") ;; actually not a lint-1 
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z9ali28jw4l4f40vciw4lgcalgqahy3ma91ns80zq76zk7fcpw2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golangci/lint"))
;;     (home-page "https://github.com/golangci/lint")
;;     (synopsis "lint")
;;     (description
;;       "Package lint defines common interfaces for Go code checkers.
;; ")
;;     (license license:bsd-3)))

;; (define-public go-go-etcd-io-etcd-client-v2
;;   (package
;;     (name "go-go-etcd-io-etcd-client-v2")
;;     (version "2.3.8+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/etcd-io/etcd")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1j2v2cijqsvyvsk076s29jw4dmcn8ffhndlmp3hvdybx6727mnfw"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/etcd-io/etcd/client/v2"
;;        #:unpack-path "github.com/etcd-io/etcd"))
;;     (home-page "https://github.com/etcd-io/etcd")
;;     (synopsis "etcd")
;;     (description
;;       "Package main is a simple wrapper of the real etcd entrypoint package
;; (located at github.com/coreos/etcd/etcdmain) to ensure that etcd is still
;; \"go getable\"; e.g. `go get github.com/coreos/etcd` works as expected and
;; builds a binary in $GOBIN/etcd
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-influxdata-influxdb-client-go-v2
;;   (package
;;     (name "go-github-com-influxdata-influxdb-client-go-v2")
;;     (version "2.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/influxdb-client-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0khkyh6pgghj0njpmxkwxda20z6wwkzb6j323irvyxcmlxy3gqmj"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/influxdb-client-go/v2"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-influxdata-line-protocol"
;;          ,go-github-com-influxdata-line-protocol)
;;         ("go-github-com-deepmap-oapi-codegen"
;;          ,go-github-com-deepmap-oapi-codegen)))
;;     (home-page "https://github.com/influxdata/influxdb-client-go")
;;     (synopsis "InfluxDB Client Go")
;;     (description
;;       "Package influxdb2 provides API for using InfluxDB client in Go.
;;        It's intended to use with InfluxDB 2 server.  WriteAPI, QueryAPI 
;;        and Health work also with InfluxDB 1.8")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-line-protocol
;;   (package
;;     (name "go-github-com-influxdata-line-protocol")
;;     (version "0.0.0-20210922203350-b1ad95c89adf")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/line-protocol")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "001bprw364wp1rp81kd4kcd9289h5xr7byhs6989dmkk1mpvnn6g"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/line-protocol"))
;;     (home-page "https://github.com/influxdata/line-protocol")
;;     (synopsis "line-protocol")
;;     (description
;;       "This is an encoder for the influx ,line protocol.")
;;     (license license:expat)))

;; (define-public go-github-com-jedisct1-go-minisign
;;   (package
;;     (name "go-github-com-jedisct1-go-minisign")
;;     (version "0.0.0-20211008170404-d0c644b276f4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jedisct1/go-minisign")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0snvkfvykhgpnw81limma9bkna12acqqgzzw2fw2sqspswj753zk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jedisct1/go-minisign"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/jedisct1/go-minisign")
;;     (synopsis "go-minisign")
;;     (description
;;       "This package provides a Golang library to verify Minisign signatures.")
;;     (license license:expat)))

;; (define-public go-github-com-julienschmidt-httprouter
;;   (package
;;     (name "go-github-com-julienschmidt-httprouter")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/julienschmidt/httprouter")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1a6sy0ysqknsjssjh7qg1dqn21xmj9a36c57nrk7srfmab4ffmk1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/julienschmidt/httprouter"))
;;     (home-page "https://github.com/julienschmidt/httprouter")
;;     (synopsis "HttpRouter")
;;     (description
;;       "Package httprouter is a trie based high performance HTTP request router.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-karalabe-usb
;;   (package
;;     (name "go-github-com-karalabe-usb")
;;     (version "0.0.0-20211005121534-4c5740d64559")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/karalabe/usb")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zv34556abrqdygmv03z47vx5xdxnfdgbhy37mdy190dvzc1r0hv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/karalabe/usb"))
;;     (home-page "https://github.com/karalabe/usb")
;;     (synopsis "Yet another USB library for Go")
;;     (description "Package usb provide interfaces for generic USB devices.")
;;     (license license:lgpl3)))

;; (define-public go-github-com-naoina-go-stringutil
;;   (package
;;     (name "go-github-com-naoina-go-stringutil")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/naoina/go-stringutil")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "00831p1wn3rimybk1z8l30787kn1akv5jax5wx743nn76qcmkmc6"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/naoina/go-stringutil"))
;;     (home-page "https://github.com/naoina/go-stringutil")
;;     (synopsis "stringutil")
;;     (description
;;       "See https://godoc.org/github.com/naoina/go-stringutil")
;;     (license license:expat)))

;; (define-public go-github-com-naoina-toml
;;   (package
;;     (name "go-github-com-naoina-toml")
;;     (version "0.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/naoina/toml")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0kh7xnckw689kksh23ginyl3g8h2yqyvjh54nmnfvjaj886lvbsf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/naoina/toml"))
;;     (home-page "https://github.com/naoina/toml")
;;     (synopsis "TOML parser and encoder library for Golang")
;;     (description
;;       "Package toml encodes and decodes the TOML configuration format using reflection.")
;;     (license license:expat)))

;; (define-public go-github-com-rivo-uniseg
;;   (package
;;     (name "go-github-com-rivo-uniseg")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rivo/uniseg")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0j7h22vfmjj562vr8gpsyrkrwp1pq9ayh5fylv24skxb467g9f0q"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rivo/uniseg"))
;;     (home-page "https://github.com/rivo/uniseg")
;;     (synopsis "Unicode Text Segmentation for Go")
;;     (description
;;       "Package uniseg implements Unicode Text Segmentation according to Unicode
;;        Standard Annex #29 (http://unicode.org/reports/tr29/).")
;;     (license license:expat)))

;; (define-public go-github-com-mattn-go-runewidth
;;   (package
;;     (name "go-github-com-mattn-go-runewidth")
;;     (version "0.0.13")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mattn/go-runewidth")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1yir0f3wc5z5hnkwhvx5qb6nmpfb05zp2gvfjvna63s8kmla1rrn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mattn/go-runewidth"))
;;     (propagated-inputs
;;       `(("go-github-com-rivo-uniseg" ,go-github-com-rivo-uniseg)))
;;     (home-page "https://github.com/mattn/go-runewidth")
;;     (synopsis "go-runewidth")
;;     (description
;;       "This package provides functions to get fixed width of the character or string.")
;;     (license license:expat)))

;; (define-public go-github-com-peterh-liner
;;   (package
;;     (name "go-github-com-peterh-liner")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/peterh/liner")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ma4wk01f63s1vshdly3m7pn56xlapi1hfmhqvs8yqx5pqi2w2yf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/peterh/liner"))
;;     (propagated-inputs
;;       `(("go-github-com-mattn-go-runewidth"
;;          ,go-github-com-mattn-go-runewidth)))
;;     (home-page "https://github.com/peterh/liner")
;;     (synopsis "Liner")
;;     (description
;;       "Package liner implements a simple command line editor, inspired by linenoise
;;        (https://github.com/antirez/linenoise/).  This package supports WIN32 in
;;        addition to the xterm codes supported by everything else.")
;;     (license license:expat)))

;; (define-public go-github-com-dgryski-go-sip13
;;   (package
;;     (name "go-github-com-dgryski-go-sip13")
;;     (version "0.0.0-20200911182023-62edffca9245")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/dgryski/go-sip13")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1khikfkqy7pj93d14zq0bvr6amfdkagxwgm8pf52glzqx2bxsaq7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/dgryski/go-sip13"))
;;     (home-page "https://github.com/dgryski/go-sip13")
;;     (synopsis "siphash 1-3")
;;     (description "siphash 1-3")
;;     (license license:expat)))

;; (define-public go-github-com-vividcortex-gohistogram
;;   (package
;;     (name "go-github-com-vividcortex-gohistogram")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/VividCortex/gohistogram")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ykpvrkri3mzc0z77kdva93ylh0bqg7jq3i024r3iv0i6bwx3rnf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/VividCortex/gohistogram"))
;;     (home-page "https://github.com/VividCortex/gohistogram")
;;     (synopsis "gohistogram - Histograms in Go")
;;     (description
;;       "Package gohistogram contains implementations of weighted and exponential histograms.")
;;     (license license:expat)))

;; (define-public go-github-com-afex-hystrix-go
;;   (package
;;     (name "go-github-com-afex-hystrix-go")
;;     (version "0.0.0-20180502004556-fa1af6a1f4f5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/afex/hystrix-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zlj0330j816flvwvis4d4vv1gigpxlghph7awbc9jb7ggf2qssn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/afex/hystrix-go"))
;;     (home-page "https://github.com/afex/hystrix-go")
;;     (synopsis "hystrix-go")
;;     (description
;;       "Hystrix is a great project from Netflix.")
;;     (license license:expat)))

;; (define-public go-github-com-aws-aws-sdk-go
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go")
;;     (version "1.41.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pqrihxnixh05np3zqa250r6yj3bhr4rsdh1wk3xl24zrr80ih6w"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/aws/aws-sdk-go"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)))
;;     (home-page "https://github.com/aws/aws-sdk-go")
;;     (synopsis "AWS SDK for Go")
;;     (description
;;       "Package sdk is the official AWS SDK for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-service-route53
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-service-route53")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/service/route53"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-service-cloudwatch
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-service-cloudwatch")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/service/cloudwatch"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-service-s3
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-service-s3")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/service/s3"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-feature-s3-manager
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-feature-s3-manager")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/feature/s3/manager"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-credentials
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-credentials")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/credentials"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-aws-aws-sdk-go-v2-config
;;   (package
;;     (name "go-github-com-aws-aws-sdk-go-v2-config")
;;     (version "1.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/aws-sdk-go-v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "143mwngw7nc9px0lw7n6xnl6b8zcqzavkx7flmb1gh8dhfy9drr0"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/aws/aws-sdk-go-v2/config"
;;        #:unpack-path "github.com/aws/aws-sdk-go-v2"))
;;     (propagated-inputs
;;       `(("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)))
;;     (home-page "https://github.com/aws/aws-sdk-go-v2")
;;     (synopsis "AWS SDK for Go v2")
;;     (description
;;       "Package sdk is the official AWS SDK v2 for the Go programming language.")
;;     (license license:asl2.0)))


;; (define-public go-github-com-azure-go-autorest-autorest-adal
;;   (package
;;     (name "go-github-com-azure-go-autorest-autorest-adal")
;;     (version "14.2.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/go-autorest")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/azure/go-autorest/autorest/adal"
;;        #:unpack-path "github.com/azure/go-autorest"))
;;     (home-page "https://github.com/azure/go-autorest")
;;     (synopsis "go-autorest")
;;     (description
;;       "Package go-autorest provides an HTTP request client for use with Autorest-generated API client packages.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-azure-go-autorest-autorest-to
;;   (package
;;     (name "go-github-com-azure-go-autorest-autorest-to")
;;     (version "14.2.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/go-autorest")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/azure/go-autorest/autorest/to"
;;        #:unpack-path "github.com/azure/go-autorest"))
;;     (home-page "https://github.com/azure/go-autorest")
;;     (synopsis "go-autorest")
;;     (description
;;       "Package go-autorest provides an HTTP request client for use with Autorest-generated API client packages.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-azure-go-autorest-autorest-validation
;;   (package
;;     (name "go-github-com-azure-go-autorest-autorest-validation")
;;     (version "14.2.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/go-autorest")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/azure/go-autorest/autorest/validation"
;;        #:unpack-path "github.com/azure/go-autorest"))
;;     (home-page "https://github.com/azure/go-autorest")
;;     (synopsis "go-autorest")
;;     (description
;;       "Package go-autorest provides an HTTP request client for use with Autorest-generated API client packages.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-azure-go-autorest-autorest-azure-auth
;;   (package
;;     (name "go-github-com-azure-go-autorest-autorest-azure-auth")
;;     (version "14.2.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/go-autorest")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/azure/go-autorest/autorest/azure/auth"
;;        #:unpack-path "github.com/azure/go-autorest"))
;;     (home-page "https://github.com/azure/go-autorest")
;;     (synopsis "go-autorest")
;;     (description
;;       "Package go-autorest provides an HTTP request client for use with Autorest-generated API client packages.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-azure-go-autorest-autorest
;;   (package
;;     (name "go-github-com-azure-go-autorest-autorest")
;;     (version "14.2.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Azure/go-autorest")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z3j6jj2f9r208vgrg4byaczxbygiw97k2cm83qd64bl82vhyjix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/azure/go-autorest/autorest"
;;        #:unpack-path "github.com/azure/go-autorest"))
;;     (home-page "https://github.com/azure/go-autorest")
;;     (synopsis "go-autorest")
;;     (description
;;       "Package go-autorest provides an HTTP request client for use with Autorest-generated API client packages.
;; ")
;;     (license license:asl2.0)))

;; (define-public go-github-com-golang-mock
;;   (package
;;     (name "go-github-com-golang-mock")
;;     (version "1.6.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/mock")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1hara8j0x431njjhqxfrg1png7xa1gbrpwza6ya4mwlx76hppap4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/mock"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-mod" ,go-golang-org-x-mod)))
;;     (home-page "https://github.com/golang/mock")
;;     (synopsis "gomock")
;;     (description
;;       "gomock is a mocking framework for the Go programming language.  It
;;        integrates well with Go's built-in testing package, but can be used in other
;;        contexts too.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-casbin-casbin-v2
;;   (package
;;     (name "go-github-com-casbin-casbin-v2")
;;     (version "2.37.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/casbin/casbin")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zszf92n38ym6zgkrl23w4np65pg9cxlymj4lg4dhah48k02ax77"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/casbin/casbin/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-golang-mock" ,go-github-com-golang-mock)
;;         ("go-github-com-knetic-govaluate" ,go-github-com-knetic-govaluate)))
;;     (home-page "https://github.com/casbin/casbin")
;;     (synopsis "Casbin")
;;     (description
;;       "News: still worry about how to write the correct Casbin policy? Casbin online editor is coming to help! 
;;        Try it at: https://casbin.org/editor/")
;;     (license license:asl2.0)))

;; (define-public go-github-com-go-kit-log
;;   (package
;;     (name "go-github-com-go-kit-log")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-kit/log")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13gbqrwvqy9j903j44x0kix5gnn34a8hl8skbdijy7arpkxpj6h3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-kit/log"))
;;     (propagated-inputs
;;       `(("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)))
;;     (home-page "https://github.com/go-kit/log")
;;     (synopsis "package log")
;;     (description "Package log provides a structured logger.")
;;     (license license:expat)))

;; (define-public go-github-com-go-zookeeper-zk
;;   (package
;;     (name "go-github-com-go-zookeeper-zk")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-zookeeper/zk")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0z7xvpww2mfgbbl6id68wggkvflfczy637vsyhjijfz86yhjkqza"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-zookeeper/zk"))
;;     (home-page "https://github.com/go-zookeeper/zk")
;;     (synopsis "Native Go Zookeeper Client Library")
;;     (description
;;       "Package zk is a native Go client library for the ZooKeeper orchestration service.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-golang-jwt-jwt-v4
;;   (package
;;     (name "go-github-com-golang-jwt-jwt-v4")
;;     (version "4.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang-jwt/jwt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "020yxsrplnnm9vcd0jdaaziv6pyhvvs9y0qadzbbrqblqmj0vy4x"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang-jwt/jwt/v4"))
;;     (home-page "https://github.com/golang-jwt/jwt")
;;     (synopsis "jwt-go")
;;     (description
;;       "Package jwt is a Go implementation of JSON Web Tokens: 
;;        http://self-issued.info/docs/draft-jones-json-web-token.html")
;;     (license license:expat)))

;; (define-public go-github-com-franela-goblin
;;   (package
;;     (name "go-github-com-franela-goblin")
;;     (version "0.0.0-20211003143422-0a4f594942bf")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/franela/goblin")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06mdnw8wk8mxaapfqlz86jf4qgzg6j77875bmraasf8il48ap0b5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/franela/goblin"))
;;     (home-page "https://github.com/franela/goblin")
;;     (synopsis "Goblin")
;;     (description
;;       "This package provides a Mocha like BDD testing framework written in Go that requires
;;        no additional dependencies.  Requires no extensive documentation nor complicated 
;;        steps to get it running.")
;;     (license license:expat)))

;; (define-public go-github-com-neelance-astrewrite
;;   (package
;;     (name "go-github-com-neelance-astrewrite")
;;     (version "0.0.0-20160511093645-99348263ae86")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/neelance/astrewrite")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07527807p8q6h05iq4qy0xrlcmwyzj76gpk0yqf71yaj447mz24v"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/neelance/astrewrite"))
;;     (home-page "https://github.com/neelance/astrewrite")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-2)))

;; (define-public go-github-com-neelance-sourcemap
;;   (package
;;     (name "go-github-com-neelance-sourcemap")
;;     (version "0.0.0-20200213170602-2833bce08e4c")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/neelance/sourcemap")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05ymjg1z9phf0wp4w058kvf13bmn4skv67chb3r04z69in8y8jih"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/neelance/sourcemap"))
;;     (home-page "https://github.com/neelance/sourcemap")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:bsd-2)))

;; (define-public go-github-com-shurcool-go
;;   (package
;;     (name "go-github-com-shurcool-go")
;;     (version "0.0.0-20200502201357-93f07166e636")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shurcooL/go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0wgwlhsgx1c2v650xvf099hgrd4av18gfb0kha09klmsh0p0hc5r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shurcooL/go"))
;;     (home-page "https://github.com/shurcooL/go")
;;     (synopsis "go")
;;     (description "Common Go code.")
;;     (license license:expat)))

;; (define-public go-github-com-shurcool-httpfs
;;   (package
;;     (name "go-github-com-shurcool-httpfs")
;;     (version "0.0.0-20190707220628-8d4bc4ba7749")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shurcooL/httpfs")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0qjkbjnp86kjr7r0xjwp39blnk1ggkzy6zm3xphr5dpin4jkgfa1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shurcooL/httpfs"))
;;     (home-page "https://github.com/shurcooL/httpfs")
;;     (synopsis "httpfs")
;;     (description
;;       "Collection of Go packages for working with the (code http.FileSystem) interface.")
;;     (license license:expat)))

;; (define-public go-github-com-inconshreveable-mousetrap
;;   (package
;;     (name "go-github-com-inconshreveable-mousetrap")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/inconshreveable/mousetrap")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1mn0kg48xkd74brf48qf5hzp0bc6g8cf5a77w895rl3qnlpfw152"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/inconshreveable/mousetrap"))
;;     (home-page "https://github.com/inconshreveable/mousetrap")
;;     (synopsis "mousetrap")
;;     (description "mousetrap is a tiny library that answers a single question.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-shurcool-vfsgen
;;   (package
;;     (name "go-github-com-shurcool-vfsgen")
;;     (version "0.0.0-20200824052919-0d455de96546")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/shurcooL/vfsgen")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0md1vgaq95x1jmxpnsfv6s9xf3v8gqi7lcl7mkxpf6274rf1n2pk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/shurcooL/vfsgen"))
;;     (home-page "https://github.com/shurcooL/vfsgen")
;;     (synopsis "vfsgen")
;;     (description
;;       "Package vfsgen takes an http.FileSystem (likely at `go generate` time) and
;;        generates Go code that statically implements the provided http.FileSystem.")
;;     (license license:expat)))

;; (define-public go-github-com-gopherjs-gopherjs
;;   (package
;;     (name "go-github-com-gopherjs-gopherjs")
;;     (version "0.0.0-20211017111859-4413e62628b1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gopherjs/gopherjs")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1i14lnfzx0d2q2kd0v5jjhaajcnbccsxlbr6z6cl5ci245kk3h0y"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gopherjs/gopherjs"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-term" ,go-golang-org-x-term)
;;         ("go-github-com-shurcool-vfsgen" ,go-github-com-shurcool-vfsgen)
;;         ("go-github-com-inconshreveable-mousetrap"
;;          ,go-github-com-inconshreveable-mousetrap)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-spf13-pflag" ,go-github-com-spf13-pflag)
;;         ("go-github-com-spf13-cobra" ,go-github-com-spf13-cobra)
;;         ("go-github-com-shurcool-httpfs" ,go-github-com-shurcool-httpfs)
;;         ("go-github-com-shurcool-go" ,go-github-com-shurcool-go)
;;         ("go-github-com-neelance-sourcemap" ,go-github-com-neelance-sourcemap)
;;         ("go-github-com-neelance-astrewrite"
;;          ,go-github-com-neelance-astrewrite)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-fsnotify-fsnotify" ,go-github-com-fsnotify-fsnotify)))
;;     (home-page "https://github.com/gopherjs/gopherjs")
;;     (synopsis "GopherJS - A compiler from Go to JavaScript")
;;     (description
;;       "GopherJS compiles Go code (golang.org) to pure JavaScript code.  Its main purpose is
;;        to give you the opportunity to write front-end code in Go which will still run in all browsers.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-jtolds-gls
;;   (package
;;     (name "go-github-com-jtolds-gls")
;;     (version "4.20.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jtolio/gls")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1k7xd2q2ysv2xsh373qs801v6f359240kx0vrl0ydh7731lngvk6"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jtolds/gls"))
;;     (home-page "https://github.com/jtolds/gls")
;;     (synopsis "gls")
;;     (description "Package gls implements goroutine-local storage.")
;;     (license license:expat)))

;; (define-public go-github-com-smartystreets-assertions
;;   (package
;;     (name "go-github-com-smartystreets-assertions")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/smartystreets/assertions")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1iyminxmipvddm0hz8v69is4mga6ghif5ilmfz9s0d9kwmirbcn0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/smartystreets/assertions"))
;;     (home-page "https://github.com/smartystreets/assertions")
;;     (synopsis #f)
;;     (description
;;       "Package assertions contains the implementations for all assertions which
;;        are referenced in goconvey's `convey` package
;;        (github.com/smartystreets/goconvey/convey) and gunit (github.com/smartystreets/gunit)
;;        for use with the So(...) method. They can also be used in traditional Go test functions 
;;        and even in applications.")
;;     (license license:expat)))

;; (define-public go-github-com-smartystreets-goconvey
;;   (package
;;     (name "go-github-com-smartystreets-goconvey")
;;     (version "1.6.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/smartystreets/goconvey")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wi9wdmvbpd4phf586aghkn80aymib8mapgkvs5nnb21lfiwbqjy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/smartystreets/goconvey"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-smartystreets-assertions"
;;          ,go-github-com-smartystreets-assertions)
;;         ("go-github-com-jtolds-gls" ,go-github-com-jtolds-gls)
;;         ("go-github-com-gopherjs-gopherjs" ,go-github-com-gopherjs-gopherjs)))
;;     (home-page "https://github.com/smartystreets/goconvey")
;;     (synopsis "GoConvey is awesome Go testing")
;;     (description
;;       "This executable provides an HTTP server that watches for file system changes
;;        to .go files within the working directory (and all nested go packages).
;;        Navigating to the configured host and port in a web browser will display the
;;        latest results of running `go test` in each go package.")
;;     (license license:expat)))

;; (define-public go-github-com-hudl-fargo
;;   (package
;;     (name "go-github-com-hudl-fargo")
;;     (version "1.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hudl/fargo")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "18pk1b5yybkghrjxskgssz8gzpv37k8w7gk0cldhcnffx85rqi0m"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hudl/fargo"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-warnings-v0" ,go-gopkg-in-warnings-v0)
;;         ("go-gopkg-in-gcfg-v1" ,go-gopkg-in-gcfg-v1)
;;         ("go-github-com-smartystreets-goconvey"
;;          ,go-github-com-smartystreets-goconvey)
;;         ("go-github-com-op-go-logging" ,go-github-com-op-go-logging)
;;         ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-franela-goreq" ,go-github-com-franela-goreq)
;;         ("go-github-com-franela-goblin" ,go-github-com-franela-goblin)
;;         ("go-github-com-clbanning-mxj" ,go-github-com-clbanning-mxj)
;;         ("go-github-com-cenkalti-backoff-v4"
;;          ,go-github-com-cenkalti-backoff-v4)))
;;     (home-page "https://github.com/hudl/fargo")
;;     (synopsis "fargo")
;;     (description
;;       "Netflix Eureka client in golang.  Named for the show Eureka.")
;;     (license license:expat)))

;; (define-public go-github-com-influxdata-influxdb1-client
;;   (package
;;     (name "go-github-com-influxdata-influxdb1-client")
;;     (version "0.0.0-20200827194710-b269163b24ab")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/influxdata/influxdb1-client")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pm1j437xk7d32px60j52qm98zgn21nmaqavjflvr44zaglrz5n9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/influxdata/influxdb1-client"))
;;     (home-page "https://github.com/influxdata/influxdb1-client")
;;     (synopsis "influxdb1-clientv2")
;;     (description
;;       "Package client implements a now-deprecated client for InfluxDB;
;;        use github.com/influxdata/influxdb1-client/v2 instead.")
;;     (license license:expat)))

;; (define-public go-github-com-nats-io-nats-server-v2
;;   (package
;;     (name "go-github-com-nats-io-nats-server-v2")
;;     (version "2.6.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nats-io/nats-server")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1yzgj1c8g1zag1vn57sssaglpsczh2nr2qjydrlgz4ik35bazspm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nats-io/nats-server/v2"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
;;         ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)
;;         ("go-github-com-nats-io-nats-go" ,go-github-com-nats-io-nats-go)
;;         ("go-github-com-nats-io-jwt-v2" ,go-github-com-nats-io-jwt-v2)
;;         ("go-github-com-minio-highwayhash" ,go-github-com-minio-highwayhash)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/nats-io/nats-server")
;;     (synopsis "Documentation")
;;     (description
;;       "NATS is a simple, secure and performant communications system for digital systems, 
;;        services and devices.  NATS is part of the Cloud Native Computing Foundation (CNCF).  
;;        NATS has over 40 client language implementations, and its server can run on-premise, 
;;        in the cloud, at the edge, and even on a Raspberry Pi.  NATS can secure and simplify 
;;        design and operation of modern distributed systems.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-nats-io-nats-go
;;   (package
;;     (name "go-github-com-nats-io-nats-go")
;;     (version "1.13.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nats-io/nats.go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nnpp0llqsv1ijfliava5hlq3cb1bk20jz23fwfsvisgcjgbp384"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nats-io/nats.go"))
;;     (propagated-inputs
;;       `(("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
;;         ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)))
;;     (home-page "https://github.com/nats-io/nats.go")
;;     (synopsis "NATS - Go Client")
;;     (description
;;       "This package provides a Go client for the NATS messaging system (https://nats.io).")
;;     (license license:asl2.0)))

;; (define-public go-github-com-cpuguy83-go-md2man-v2
;;   (package
;;     (name "go-github-com-cpuguy83-go-md2man-v2")
;;     (version "2.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cpuguy83/go-md2man")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "051ljpzf1f5nh631lvn53ziclkzmx5lza8545mkk6wxdfnfdcx8f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cpuguy83/go-md2man/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-russross-blackfriday-v2"
;;          ,go-github-com-russross-blackfriday-v2)))
;;     (home-page "https://github.com/cpuguy83/go-md2man")
;;     (synopsis "go-md2man")
;;     (description "Converts markdown into roff (man pages).")
;;     (license license:expat)))

;; (define-public go-github-com-russross-blackfriday-v2
;;   (package
;;     (name "go-github-com-russross-blackfriday-v2")
;;     (version "2.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/russross/blackfriday")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0d1rg1drrfmabilqjjayklsz5d0n3hkf979sr3wsrw92bfbkivs7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/russross/blackfriday/v2"))
;;     (home-page "https://github.com/russross/blackfriday")
;;     (synopsis "Blackfriday")
;;     (description "Package blackfriday is a markdown processor.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-shopify-toxiproxy-v2
;;   (package
;;     (name "go-github-com-shopify-toxiproxy-v2")
;;     (version "2.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Shopify/toxiproxy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13bhhgvab1m1wyxng729inf036qgj91laxarjc7qga4kzvnrzsjz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Shopify/toxiproxy/v2"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-shurcool-sanitized-anchor-name"
;;          ,go-github-com-shurcool-sanitized-anchor-name)
;;         ("go-github-com-russross-blackfriday-v2"
;;          ,go-github-com-russross-blackfriday-v2)
;;         ("go-github-com-cpuguy83-go-md2man-v2"
;;          ,go-github-com-cpuguy83-go-md2man-v2)
;;         ("go-gopkg-in-tomb-v1" ,go-gopkg-in-tomb-v1)
;;         ("go-golang-org-x-term" ,go-golang-org-x-term)
;;         ("go-github-com-urfave-cli-v2" ,go-github-com-urfave-cli-v2)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)))
;;     (home-page "https://github.com/Shopify/toxiproxy")
;;     (synopsis "Toxiproxy")
;;     (description
;;       "Toxiproxy is a framework for simulating network conditions.  It's made
;;        specifically to work in testing, CI and development environments, supporting
;;        deterministic tampering with connections, but with support for randomized chaos
;;        and customization.  We've been successfully using it in all development and
;;        test environments at Shopify since October, 2014.")
;;     (license license:expat)))

;; (define-public go-github-com-fortytw2-leaktest
;;   (package
;;     (name "go-github-com-fortytw2-leaktest")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/fortytw2/leaktest")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0487zghyxqzk6zdbhd2j074pcc2l15l4sfg5clrjqwfbql7519wx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/fortytw2/leaktest"))
;;     (home-page "https://github.com/fortytw2/leaktest")
;;     (synopsis "Leaktest")
;;     (description
;;       "Package leaktest provides tools to detect leaked goroutines in tests.
;;        To use it, call \"defer leaktest.Check(t)()\" at the beginning of each
;;        test that may use goroutines. copied out of the cockroachdb source tree
;;        with slight modifications to be more re-useable")
;;     (license license:bsd-3)))

;; (define-public go-github-com-gorilla-sessions
;;   (package
;;     (name "go-github-com-gorilla-sessions")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gorilla/sessions")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zjw2s37yggk9231db0vmgs67z8m3am8i8l4gpgz6fvlbv52baxp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gorilla/sessions"))
;;     (propagated-inputs
;;       `(("go-github-com-gorilla-securecookie"
;;          ,go-github-com-gorilla-securecookie)))
;;     (home-page "https://github.com/gorilla/sessions")
;;     (synopsis "sessions")
;;     (description
;;       "Package sessions provides cookie and filesystem sessions and
;;        infrastructure for custom session backends.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-jcmturner-aescts-v2
;;   (package
;;     (name "go-github-com-jcmturner-aescts-v2")
;;     (version "2.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/aescts")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0yrdiisdhcqfs8jpicc30dfmbqzxhkmbayn902xrgwkndky8w7l1"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/aescts/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/jcmturner/aescts")
;;     (synopsis #f)
;;     (description
;;       "Package aescts provides AES CBC CipherText Stealing encryption and decryption methods")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jcmturner-dnsutils-v2
;;   (package
;;     (name "go-github-com-jcmturner-dnsutils-v2")
;;     (version "2.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/dnsutils")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "116zbgvfj88vv93fnapmmgyd5g8kzy774cdyzsnnzyzng92j61c9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/dnsutils/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/jcmturner/dnsutils")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:asl2.0)))

;; (define-public go-github-com-jcmturner-gofork
;;   (package
;;     (name "go-github-com-jcmturner-gofork")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/gofork")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0xzsnjqv3d59w9pgqzf6550wdwaqnac7zcdgqfd25w65yhcffzhr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/gofork"))
;;     (home-page "https://github.com/jcmturner/gofork")
;;     (synopsis "GoFork")
;;     (description
;;       "This repository contains modified Go standard library packages for use as work arounds 
;;        until issues are addressed in the official distribution.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-jcmturner-goidentity-v6
;;   (package
;;     (name "go-github-com-jcmturner-goidentity-v6")
;;     (version "6.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/goidentity")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "064ysvxvrvij843s7qj1nkzl5qc6j1qbrsb3s0zmwd1sa7vq8q1n"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/goidentity/v6"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)))
;;     (home-page "https://github.com/jcmturner/goidentity")
;;     (synopsis "goidentity")
;;     (description "Please import as below")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jcmturner-rpc-v2
;;   (package
;;     (name "go-github-com-jcmturner-rpc-v2")
;;     (version "2.0.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/rpc")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nm4j2nwcszghldw39rwdx2hr56i1lybfpv33y4gd67w6qcqbpsi"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/rpc/v2"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/jcmturner/rpc")
;;     (synopsis "RPC")
;;     (description
;;       "This project relates to CDE 1.1: Remote Procedure Call")
;;     (license license:asl2.0)))

;; (define-public go-github-com-jcmturner-gokrb5-v8
;;   (package
;;     (name "go-github-com-jcmturner-gokrb5-v8")
;;     (version "8.4.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/jcmturner/gokrb5")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0w9d1pa3r6qmdblk25bghf78ncs03l15l1sxnh4n536c356rzq4b"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/jcmturner/gokrb5/v8"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-jcmturner-rpc-v2" ,go-github-com-jcmturner-rpc-v2)
;;         ("go-github-com-jcmturner-goidentity-v6"
;;          ,go-github-com-jcmturner-goidentity-v6)
;;         ("go-github-com-jcmturner-gofork" ,go-github-com-jcmturner-gofork)
;;         ("go-github-com-jcmturner-dnsutils-v2"
;;          ,go-github-com-jcmturner-dnsutils-v2)
;;         ("go-github-com-jcmturner-aescts-v2"
;;          ,go-github-com-jcmturner-aescts-v2)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-gorilla-sessions" ,go-github-com-gorilla-sessions)))
;;     (home-page "https://github.com/jcmturner/gokrb5")
;;     (synopsis "gokrb5")
;;     (description
;;       "Package gokrb5 provides a Kerberos 5 implementation for Go.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-xdg-go-pbkdf2
;;   (package
;;     (name "go-github-com-xdg-go-pbkdf2")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xdg-go/pbkdf2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nipijy5xkdnfyhkp5ryrjzm14si1i2v2xyfmblf84binwkbr8jh"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xdg-go/pbkdf2"))
;;     (home-page "https://github.com/xdg-go/pbkdf2")
;;     (synopsis "pbkdf2 â\x80\x93Â\xa0Go implementation of PBKDF2")
;;     (description
;;       "Package pbkdf2 implements password-based key derivation using the PBKDF2
;;        algorithm described in RFC 2898 and RFC 8018.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-xdg-go-stringprep
;;   (package
;;     (name "go-github-com-xdg-go-stringprep")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xdg-go/stringprep")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1df0l5n3c520y9filzz83j42wa5c056jcygmfwhjyf1pq8f6jkv9"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xdg-go/stringprep"))
;;     (propagated-inputs `(("go-golang-org-x-text" ,go-golang-org-x-text)))
;;     (home-page "https://github.com/xdg-go/stringprep")
;;     (synopsis
;;       "stringprep â\x80\x93Â\xa0Go implementation of RFC-3454 stringprep and RFC-4013 SASLprep")
;;     (description
;;       "Package stringprep provides data tables and algorithms for RFC-3454,
;;        including errata (as of 2018-02).  It also provides a profile for
;;        SASLprep as defined in RFC-4013.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-xdg-go-scram
;;   (package
;;     (name "go-github-com-xdg-go-scram")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/xdg-go/scram")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jyv4qgc1dgh3v96pazmgljpp9ij25k8hwn0v4fck18g16i0nccm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/xdg-go/scram"))
;;     (propagated-inputs
;;       `(("go-github-com-xdg-go-stringprep" ,go-github-com-xdg-go-stringprep)
;;         ("go-github-com-xdg-go-pbkdf2" ,go-github-com-xdg-go-pbkdf2)))
;;     (home-page "https://github.com/xdg-go/scram")
;;     (synopsis "Go implementation of RFC-5802")
;;     (description
;;       "Package scram provides client and server implementations of the Salted
;;        Challenge Response Authentication Mechanism (SCRAM) described in RFC-5802
;;        and RFC-7677.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-shopify-sarama
;;   (package
;;     (name "go-github-com-shopify-sarama")
;;     (version "1.30.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Shopify/sarama")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ws6xsfa6ywx3sacdskbjdwfw2s87h5szpkw5n7azsxv1xlalmcg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Shopify/sarama"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-xdg-go-scram" ,go-github-com-xdg-go-scram)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-rcrowley-go-metrics"
;;          ,go-github-com-rcrowley-go-metrics)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-jcmturner-gokrb5-v8"
;;          ,go-github-com-jcmturner-gokrb5-v8)
;;         ("go-github-com-jcmturner-gofork" ,go-github-com-jcmturner-gofork)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-frankban-quicktest" ,go-github-com-frankban-quicktest)
;;         ("go-github-com-fortytw2-leaktest" ,go-github-com-fortytw2-leaktest)
;;         ("go-github-com-eapache-queue" ,go-github-com-eapache-queue)
;;         ("go-github-com-eapache-go-xerial-snappy"
;;          ,go-github-com-eapache-go-xerial-snappy)
;;         ("go-github-com-eapache-go-resiliency"
;;          ,go-github-com-eapache-go-resiliency)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-shopify-toxiproxy-v2"
;;          ,go-github-com-shopify-toxiproxy-v2)))
;;     (home-page "https://github.com/Shopify/sarama")
;;     (synopsis "sarama")
;;     (description
;;       "Package sarama is a pure Go client library for dealing with Apache Kafka 
;;        (versions 0.8 and later).  It includes a high-level API for easily producing 
;;        and consuming messages, and a low-level API for controlling bytes on the wire 
;;        when the high-level  API is insufficient.  Usage examples for the high-level APIs
;;        are provided inline with their full documentation.")
;;     (license license:expat)))

;; (define-public go-github-com-shopify-toxiproxy
;;   (package
;;     (name "go-github-com-shopify-toxiproxy")
;;     (version "1.2.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Shopify/toxiproxy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "15r0dyfs1981z5nxf8hznlsip8d5gb3w886rnw7d1b6rg42icwq4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Shopify/toxiproxy"))
;;     (home-page "https://github.com/Shopify/toxiproxy")
;;     (synopsis "Toxiproxy")
;;     (description
;;       "Toxiproxy is a framework for simulating network conditions.  It's made
;;        specifically to work in testing, CI and development environments, supporting
;;        deterministic tampering with connections, but with support for randomized chaos
;;        and customization.")
;;     (license license:expat)))

;; (define-public go-github-com-eapache-go-resiliency
;;   (package
;;     (name "go-github-com-eapache-go-resiliency")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/eapache/go-resiliency")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01rskda1hdmrmf9wz2zn33zisavkkrgd8ycj9zvlz19v5rgjrsqy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/eapache/go-resiliency"))
;;     (home-page "https://github.com/eapache/go-resiliency")
;;     (synopsis "go-resiliency")
;;     (description
;;       "Resiliency patterns for golang. Based in part on Hystrix, Semian and others.")
;;     (license license:expat)))

;; (define-public go-github-com-eapache-go-xerial-snappy
;;   (package
;;     (name "go-github-com-eapache-go-xerial-snappy")
;;     (version "0.0.0-20180814174437-776d5712da21")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/eapache/go-xerial-snappy")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ncc41dv7xwb1znyzmzh7cvs6j5fzz0f1n8h1v3grl9ma6s1si9d"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/eapache/go-xerial-snappy"))
;;     (home-page "https://github.com/eapache/go-xerial-snappy")
;;     (synopsis "go-xerial-snappy")
;;     (description "Xerial-compatible Snappy framing support for golang.")
;;     (license license:expat)))

;; (define-public go-github-com-eapache-queue
;;   (package
;;     (name "go-github-com-eapache-queue")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/eapache/queue")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07dp54n94gn3gsvdcki56yqh7py7wqqigxbamhxwgbr05n61fqyg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/eapache/queue"))
;;     (home-page "https://github.com/eapache/queue")
;;     (synopsis "Queue")
;;     (description
;;       "Package queue provides a fast, ring-buffer queue based on the version suggested by Dariusz Górecki.
;;        Using this instead of other, simpler, queue implementations (slice+append or linked list) provides
;;        substantial memory and time benefits, and fewer GC pauses.")
;;     (license license:expat)))

;; (define-public go-github-com-go-task-slim-sprig
;;   (package
;;     (name "go-github-com-go-task-slim-sprig")
;;     (version "2.20.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-task/slim-sprig")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0p14axjkiznjrhl7gbmlc1fliq125xkckn1y9vy2jalslzrgprvv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-task/slim-sprig"))
;;     (home-page "https://github.com/go-task/slim-sprig")
;;     (synopsis "Sprig: Template functions for Go templates")
;;     (description "Sprig: Template functions for Go.")
;;     (license license:expat)))

;; (define-public go-gopkg-in-tomb-v1
;;   (package
;;     (name "go-gopkg-in-tomb-v1")
;;     (version "1.0.0-20141024135613-dd632973f1e7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/tomb.v1")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1lqmq1ag7s4b3gc3ddvr792c5xb5k6sfn0cchr3i2s7f1c231zjv"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "gopkg.in/tomb.v1" #:unpack-path "gopkg.in/tomb.v1"))
;;     (home-page "https://gopkg.in/tomb.v1")
;;     (synopsis "Installation and usage")
;;     (description
;;       "The tomb package offers a conventional API for clean goroutine termination.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-nxadm-tail
;;   (package
;;     (name "go-github-com-nxadm-tail")
;;     (version "1.4.8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nxadm/tail")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1j2gi485fhwdpmyzn42wk62103fclwbfywg42p275z1qv2bsz1rc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nxadm/tail"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-tomb-v1" ,go-gopkg-in-tomb-v1)
;;         ("go-github-com-fsnotify-fsnotify" ,go-github-com-fsnotify-fsnotify)))
;;     (home-page "https://github.com/nxadm/tail")
;;     (synopsis "tail functionality in Go")
;;     (description
;;       "nxadm/tail provides a Go library that emulates the features of the BSD `tail`
;;        program.  The library comes with full support for truncation/move detection as
;;        it is designed to work with log rotation tools.  The library works on all
;;        operating systems supported by Go, including POSIX systems like Linux and
;;        *BSD, and MS Windows.  Go 1.9 is the oldest compiler release supported.")
;;     (license license:expat)))

;; (define-public go-github-com-onsi-ginkgo
;;   (package
;;     (name "go-github-com-onsi-ginkgo")
;;     (version "1.16.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/onsi/ginkgo")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1hh6n7q92y0ai8k6rj2yzw6wwxikhyiyk4j92zgvf1zad0gmqqmz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/onsi/ginkgo"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-nxadm-tail" ,go-github-com-nxadm-tail)
;;         ("go-github-com-go-task-slim-sprig"
;;          ,go-github-com-go-task-slim-sprig)))
;;     (home-page "https://github.com/onsi/ginkgo")
;;     (synopsis "Ginkgo 2.0 Release Candidate is available!")
;;     (description "Ginkgo is a BDD-style testing framework for Golang")
;;     (license license:expat)))

;; (define-public go-github-com-onsi-gomega
;;   (package
;;     (name "go-github-com-onsi-gomega")
;;     (version "1.16.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/onsi/gomega")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1i3aqvhk5ff9x92rvxcp4ycjc44qwblpg0ndlm6izjz7x1ri01fc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/onsi/gomega"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/onsi/gomega")
;;     (synopsis ": a BDD Testing Framework for Golang")
;;     (description
;;       "Gomega is the Ginkgo BDD-style testing framework's preferred matcher library.")
;;     (license license:expat)))

;; (define-public go-github-com-pierrec-lz4
;;   (package
;;     (name "go-github-com-pierrec-lz4")
;;     (version "2.6.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pierrec/lz4")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0vfn01gd3hcpbj6gb4ig3pw6bv0g4j5780awr0fv4kf9id8gjvyy"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pierrec/lz4"))
;;     (home-page "https://github.com/pierrec/lz4")
;;     (synopsis "lz4 : LZ4 compression in pure Go")
;;     (description
;;       "Package lz4 implements reading and writing lz4 compressed data (a frame),
;;        as specified in http://fastcompression.blogspot.fr/2013/04/lz4-streaming-format-final.html.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-openzipkin-zipkin-go
;;   (package
;;     (name "go-github-com-openzipkin-zipkin-go")
;;     (version "0.2.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/openzipkin/zipkin-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16khin03g3x1nmp4cizga72hg7n3bv9diy11y75nhidx360bg7fc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/openzipkin/zipkin-go"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-github-com-streadway-amqp" ,go-github-com-streadway-amqp)
;;         ("go-github-com-rcrowley-go-metrics"
;;          ,go-github-com-rcrowley-go-metrics)
;;         ("go-github-com-pierrec-lz4" ,go-github-com-pierrec-lz4)
;;         ("go-github-com-onsi-gomega" ,go-github-com-onsi-gomega)
;;         ("go-github-com-onsi-ginkgo" ,go-github-com-onsi-ginkgo)
;;         ("go-github-com-gorilla-mux" ,go-github-com-gorilla-mux)
;;         ("go-github-com-gorilla-context" ,go-github-com-gorilla-context)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-eapache-queue" ,go-github-com-eapache-queue)
;;         ("go-github-com-eapache-go-xerial-snappy"
;;          ,go-github-com-eapache-go-xerial-snappy)
;;         ("go-github-com-eapache-go-resiliency"
;;          ,go-github-com-eapache-go-resiliency)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-shopify-toxiproxy" ,go-github-com-shopify-toxiproxy)
;;         ("go-github-com-shopify-sarama" ,go-github-com-shopify-sarama)))
;;     (home-page "https://github.com/openzipkin/zipkin-go")
;;     (synopsis "Zipkin Library for Go")
;;     (description
;;       "Package zipkin implements a native Zipkin instrumentation library for Go.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-performancecopilot-speed-v4
;;   (package
;;     (name "go-github-com-performancecopilot-speed-v4")
;;     (version "4.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/performancecopilot/speed")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0zpf42pid3cd3sqv4gy2h51adq2zpw0pi0v3fpgxqna4iia280j0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/performancecopilot/speed/v4"))
;;     (propagated-inputs
;;       `(("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)
;;         ("go-github-com-hdrhistogram-hdrhistogram-go"
;;          ,go-github-com-hdrhistogram-hdrhistogram-go)))
;;     (home-page "https://github.com/performancecopilot/speed")
;;     (synopsis "Install")
;;     (description
;;       "Package speed implements a golang client for the Performance Co-Pilot
;;        instrumentation API.")
;;     (license license:expat)))

;; (define-public go-github-com-sony-gobreaker
;;   (package
;;     (name "go-github-com-sony-gobreaker")
;;     (version "0.4.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sony/gobreaker")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0iarblm3w2d0p997jsw9bkznfj0wa8d586nh37ii5gnqy41va700"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/sony/gobreaker"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/sony/gobreaker")
;;     (synopsis "gobreaker")
;;     (description
;;       "Package gobreaker implements the Circuit Breaker pattern.
;;        See https://msdn.microsoft.com/en-us/library/dn589784.aspx.")
;;     (license license:expat)))

;; (define-public go-github-com-streadway-amqp
;;   (package
;;     (name "go-github-com-streadway-amqp")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/streadway/amqp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0k740vmzkdv9il201x4mj0md73w30jqlmn1q7m1ng3dmi635qrlr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/streadway/amqp"))
;;     (home-page "https://github.com/streadway/amqp")
;;     (synopsis "Go RabbitMQ Client Library")
;;     (description
;;       "Package amqp is an AMQP 0.9.1 client with RabbitMQ extensions")
;;     (license license:bsd-2)))

;; (define-public go-github-com-streadway-handy
;;   (package
;;     (name "go-github-com-streadway-handy")
;;     (version "0.0.0-20200128134331-0f66f006fb2e")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/streadway/handy")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "03cm61ndfj6mz8kjsdb5jjka94v21fqn6nd5agnvhb7qx3fkq1y4"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/streadway/handy"))
;;     (home-page "https://github.com/streadway/handy")
;;     (synopsis "Handy Handlers")
;;     (description
;;       "Package handy organizes some useful http server handler filters or handlers for reuse.")
;;     (license license:bsd-2)))

;; (define-public go-go-etcd-io-etcd-client-pkg-v3
;;   (package
;;     (name "go-go-etcd-io-etcd-client-pkg-v3")
;;     (version "3.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/etcd-io/etcd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0szqasja7mwm8glhaz9wisrr62g56hngkpf5y0f9f1frcq0wk7i2"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "go.etcd.io/etcd/client/pkg/v3"
;;         #:unpack-path
;;         "go.etcd.io/etcd/client/pkg/v3"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-github-com-coreos-go-systemd-v22"
;;          ,go-github-com-coreos-go-systemd-v22)))
;;     (home-page "https://go.etcd.io/etcd/client/pkg/v3")
;;     (synopsis #f)
;;     (description #f)
;;     (license license:asl2.0)))

;; (define-public go-github-com-grpc-ecosystem-go-grpc-prometheus
;;   (package
;;     (name "go-github-com-grpc-ecosystem-go-grpc-prometheus")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/grpc-ecosystem/go-grpc-prometheus")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1lzk54h7np32b3acidg1ggbn8ppbnns0m71gcg9d1qkkdh8zrijl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/grpc-ecosystem/go-grpc-prometheus"))
;;     (home-page "https://github.com/grpc-ecosystem/go-grpc-prometheus")
;;     (synopsis "Go gRPC Interceptors for Prometheus monitoring")
;;     (description
;;       "Prometheus monitoring for your gRPC Go servers and clients.")
;;     (license license:asl2.0)))

;; (define-public go-sigs-k8s-io-yaml
;;   (package
;;     (name "go-sigs-k8s-io-yaml")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/kubernetes-sigs/yaml")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0qxs0ppqwqrfqs4aywyn1h28xh1qlj5ds4drmygaz1plrxj02dqn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "sigs.k8s.io/yaml"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://sigs.k8s.io/yaml")
;;     (synopsis "YAML marshaling and unmarshaling support for Go")
;;     (description
;;       "kubernetes-sigs/yaml is a permanent fork of ghodss/yaml.")
;;     (license license:expat)))

;; (define-public go-go-etcd-io-etcd-client-v3
;;   (package
;;     (name "go-go-etcd-io-etcd-client-v3")
;;     (version "3.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/etcd-io/etcd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0szqasja7mwm8glhaz9wisrr62g56hngkpf5y0f9f1frcq0wk7i2"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "go.etcd.io/etcd/client/v3"
;;         #:unpack-path
;;         "go.etcd.io/etcd/client/v3"))
;;     (propagated-inputs
;;       `(("go-sigs-k8s-io-yaml" ,go-sigs-k8s-io-yaml)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-grpc-ecosystem-go-grpc-prometheus"
;;          ,go-github-com-grpc-ecosystem-go-grpc-prometheus)
;;         ("go-github-com-dustin-go-humanize"
;;          ,go-github-com-dustin-go-humanize)))
;;     (home-page "https://go.etcd.io/etcd/client/v3")
;;     (synopsis "etcd/clientv3")
;;     (description
;;       "Package clientv3 implements the official Go etcd client for v3.")
;;     (license license:asl2.0)))

;; (define-public go-go-opencensus-io
;;   (package
;;     (name "go-go-opencensus-io")
;;     (version "0.23.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/census-instrumentation/opencensus-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0gw4f7inf8y2ik00yfb36xganiq9rl4w2d1a41bsjqsh83ajz2km"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.opencensus.io"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)))
;;     (home-page "https://go.opencensus.io")
;;     (synopsis "OpenCensus Libraries for Go")
;;     (description "Package opencensus contains Go support for OpenCensus.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-niemeyer-pretty
;;   (package
;;     (name "go-github-com-niemeyer-pretty")
;;     (version "0.0.0-20200227124842-a10e7caefd8e")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/niemeyer/pretty")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1jmazh4xzaa3v6g46hz60q2z7nmqs9l9cxdzmmscn3kbcs2znq4v"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/niemeyer/pretty"))
;;     (propagated-inputs `(("go-github-com-kr-text" ,go-github-com-kr-text)))
;;     (home-page "https://github.com/niemeyer/pretty")
;;     (synopsis #f)
;;     (description
;;       "Package pretty provides pretty-printing for Go values.  This is
;;        useful during debugging, to avoid wrapping long output lines in
;;        the terminal.")
;;     (license license:expat)))

;; (define-public go-dmitri-shuralyov-com-gpu-mtl
;;   (package
;;     (name "go-dmitri-shuralyov-com-gpu-mtl")
;;     (version "0.0.0-20201218220906-28db891af037")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://dmitri.shuralyov.com/gpu/mtl")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0g6anij6hfiniljhki3vlwawxjyxffzpvcvc6iswmjjcfwjq4ncv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "dmitri.shuralyov.com/gpu/mtl"))
;;     (home-page "https://dmitri.shuralyov.com/gpu/mtl")
;;     (synopsis #f)
;;     (description
;;       "Package mtl provides access to Apple's Metal API (https://developer.apple.com/documentation/metal).")
;;     (license license:bsd-3)))

;; (define-public go-github-com-burntsushi-xgb
;;   (package
;;     (name "go-github-com-burntsushi-xgb")
;;     (version "0.0.0-20210121224620-deaf085860bc")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/BurntSushi/xgb")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rndd37p14i4j0n8p19l7gnk8m95kdbvx7zd0cp0gjaqx9c2xs84"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/BurntSushi/xgb"))
;;     (home-page "https://github.com/BurntSushi/xgb")
;;     (synopsis #f)
;;     (description
;;       "Package XGB provides the X Go Binding, which is a low-level API to communicate
;;        with the core X protocol and many of the X extensions.")
;;     (license license:bsd-4))) ;; not true

;; (define-public go-github-com-go-gl-glfw-v3-3-glfw
;;   (package
;;     (name "go-github-com-go-gl-glfw-v3-3-glfw")
;;     (version "0.0.0-20210727001814-0db043d8d5be")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-gl/glfw")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0cbifrp5i5926fx8dnfcpkkxgqw16pg7jaj3qnz9sqg7a94561bz"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/go-gl/glfw/v3.3/glfw"
;;         #:unpack-path
;;         "github.com/go-gl/glfw"))
;;     (home-page "https://github.com/go-gl/glfw")
;;     (synopsis "Go bindings for GLFW 3")
;;     (description "Go bindings for GLFW 3")
;;     (license license:bsd-3)))

;; (define-public go-github-com-go-logr-logr
;;   (package
;;     (name "go-github-com-go-logr-logr")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-logr/logr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1805nbnnj0vqv4cqqi9im9jv0aq23693rgmg9z0s4zxpdi9ivhap"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-logr/logr"))
;;     (home-page "https://github.com/go-logr/logr")
;;     (synopsis "A minimal logging API for Go")
;;     (description
;;       "Package logr defines a general-purpose logging API and abstract interfaces
;;        to back that API.  Packages in the Go ecosystem can depend on this package,
;;        while callers can implement logging with whatever backend is appropriate.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-rs-xid
;;   (package
;;     (name "go-github-com-rs-xid")
;;     (version "1.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rs/xid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0w2hva6ymn16yn6zrwb6nx3kxaffva95w7gj2fwg0xx39fyfslbb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rs/xid"))
;;     (home-page "https://github.com/rs/xid")
;;     (synopsis "Globally Unique ID Generator")
;;     (description
;;       "Package xid is a globally unique id generator suited for web scale")
;;     (license license:expat)))

;; (define-public go-github-com-rs-zerolog
;;   (package
;;     (name "go-github-com-rs-zerolog")
;;     (version "1.25.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rs/zerolog")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "006n5gf3q0wkd8hcxwjn3g1fz387hqqq134bwkgkzjcqyfn6y5b3"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rs/zerolog"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-github-com-rs-xid" ,go-github-com-rs-xid)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-coreos-go-systemd-v22"
;;          ,go-github-com-coreos-go-systemd-v22)))
;;     (home-page "https://github.com/rs/zerolog")
;;     (synopsis "Zero Allocation JSON Logger")
;;     (description
;;       "Package zerolog provides a lightweight logging library dedicated to JSON logging.")
;;     (license license:expat)))

;; (define-public go-go-opentelemetry-io-otel
;;   (package
;;     (name "go-go-opentelemetry-io-otel")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/open-telemetry/opentelemetry-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.opentelemetry.io/otel"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://go.opentelemetry.io/otel")
;;     (synopsis "OpenTelemetry-Go")
;;     (description
;;       "Package otel provides global access to the OpenTelemetry API.  The subpackages of
;;        the otel package provide an implementation of the OpenTelemetry API.")
;;     (license license:asl2.0)))

;; (define-public go-go-opentelemetry-io-otel-sdk
;;   (package
;;     (name "go-go-opentelemetry-io-otel-sdk")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/open-telemetry/opentelemetry-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.opentelemetry.io/otel/sdk"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://go.opentelemetry.io/otel/sdk")
;;     (synopsis "OpenTelemetry Go API and SDK")
;;     (description
;;      "OpenTelemetry-Go is the Go implementation of OpenTelemetry. It provides a set of APIs to
;;       directly measure performance and behavior of your software and send this data 
;;       to observability platforms.")
;;     (license license:asl2.0)))

;; (define-public go-go-opentelemetry-io-otel-trace
;;   (package
;;     (name "go-go-opentelemetry-io-otel-trace")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/open-telemetry/opentelemetry-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "021aq1w4pzwf45vqs2pa6jskdn1jj3p4ky6bf7zkkjh8ds44fb6f"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.opentelemetry.io/otel/trace"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://go.opentelemetry.io/otel/trace")
;;     (synopsis #f)
;;     (description
;;       "Package trace provides an implementation of the tracing part of the
;;        OpenTelemetry API.")
;;     (license license:asl2.0)))

;; (define-public go-golang-org-x-mobile
;;   (package
;;     (name "go-golang-org-x-mobile")
;;     (version "0.0.0-20210924032853-1c027f395ef7")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/mobile")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1zxh8q45c6zh9q2g3wrwkzkjm4anzxnryqsa003rvr5pdxf6cp1b"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "golang.org/x/mobile"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-mod" ,go-golang-org-x-mod)
;;         ("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)))
;;     (home-page "https://golang.org/x/mobile")
;;     (synopsis "Go support for Mobile devices")
;;     (description
;;       "The Go mobile repository holds packages and build tools for using Go on mobile platforms.")
;;     (license license:bsd-3)))

;; (define-public go-golang-org-x-sys
;;   (package
;;     (name "go-golang-org-x-sys")
;;     (version "0.0.0-20211023085530-d6a326fbbf70")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/sys")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0liy6xkmkf84qkd65rz28bxysdvs02lr7irq095b4yxy4yly12s7"))))
;;     (build-system go-build-system)
;;     (arguments 
;;      `(#:import-path "golang.org/x/sys"
;;        #:tests? #f
;;        #:phases
;;          (modify-phases %standard-phases
;;            (delete 'build))))
;;     (home-page "https://golang.org/x/sys")
;;     (synopsis "sys")
;;     (description
;;       "This repository holds supplemental Go packages for low-level interactions with
;;       the operating system.")
;;     (license license:bsd-3)))

;; (define-public go-golang-org-x-xerrors
;;   (let ((commit "5ec99f83aff198f5fbd629d6c8d8eb38a04218ca")
;;         (revision "0"))
;;     (package
;;       (name "go-golang-org-x-xerrors")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/xerrors")
;;                       (commit commit)))
;;                 (file-name (git-file-name name version))
;;                 (sha256
;;                  (base32
;;                   "1dbzc3gmf2haazpv7cgmv97rq40g2xzwbglc17vas8dwhgwgwrzb"))))
;;       (build-system go-build-system)
;;       (arguments
;;        '(#:import-path "golang.org/x/xerrors"))
;;       (synopsis "Go 1.13 error values")
;;       (description
;;        "This package holds the transition packages for the new Go 1.13 error values.")
;;       (home-page "https://godoc.org/golang.org/x/xerrors")
;;       (license license:bsd-3))))

;; (define-public go-golang-org-x-oauth2
;;   (let ((commit "0f29369cfe4552d0e4bcddc57cc75f4d7e672a33")
;;         (revision "1"))
;;     (package
;;       (name "go-golang-org-x-oauth2")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/oauth2")
;;                       (commit commit)))
;;                 (file-name (string-append "go.googlesource.com-oauth2-"
;;                                           version "-checkout"))
;;                 (sha256
;;                  (base32
;;                   "06jwpvx0x2gjn2y959drbcir5kd7vg87k0r1216abk6rrdzzrzi2"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "golang.org/x/oauth2"))
;;       (propagated-inputs
;;        `(("go-golang-org-x-net" ,go-golang-org-x-net)))
;;       (home-page "https://go.googlesource.com/oauth2")
;;       (synopsis "Client implementation of the OAuth 2.0 spec")
;;       (description "This package contains a client implementation for OAuth 2.0
;;  spec in Go.")
;;       (license license:bsd-3))))

;; (define-public go-cloud-google-com-go-storage
;;   (package
;;     (name "go-cloud-google-com-go-storage")
;;     (version "0.97.0")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/googleapis/google-cloud-go")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "0c19r1l1m1ngjkm2pcryq9rv8r2l3hx3am2zy3j2ayp73gr50vix"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:unpack-path "cloud.google.com/go"
;;        #:import-path "cloud.google.com/go/storage"))
;;     (home-page
;;      "https://pkg.go.dev/cloud.google.com/go/storage")
;;     (synopsis
;;      "Go wrapper for Google Storage")
;;     (description
;;      "Go clinet for Google Object storage.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-pkg-errors
;;   (package
;;     (name "go-github-com-pkg-errors")
;;     (version "0.9.1")
;;     (source (origin
;;               (method git-fetch)
;;               (uri (git-reference
;;                     (url "https://github.com/pkg/errors")
;;                     (commit (string-append "v" version))))
;;               (file-name (git-file-name name version))
;;               (sha256
;;                (base32
;;                 "1761pybhc2kqr6v5fm8faj08x9bql8427yqg6vnfv6nhrasx1mwq"))))
;;     (build-system go-build-system)
;;     (arguments
;;      `(#:import-path "github.com/pkg/errors"))
;;     (synopsis "Go error handling primitives")
;;     (description "This package provides @code{error}, which offers simple
;; error handling primitives in Go.")
;;     (home-page "https://github.com/pkg/errors")
;;     (license license:bsd-2)))

;; (define-public go-golang-org-x-tools
;;   (let ((commit "8b927904ee0dec805c89aaf9172f4459296ed6e8")
;;         (revision "0"))
;;     (package
;;       (name "go-golang-org-x-tools")
;;       (version (git-version "0.1.3" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/tools")
;;                       (commit commit)))
;;                 (file-name (string-append "go.googlesource.com-tools-"
;;                                           version "-checkout"))
;;                 (sha256
;;                  (base32
;;                   "0iinb70xhcjsddgi42ia1n745lx2ibnjdm6m2v666qrk3876vpck"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "golang.org/x/tools"
;;          ;; Source-only package
;;          #:tests? #f
;;          #:phases
;;          (modify-phases %standard-phases
;;            ;; Source-only package
;;            (delete 'build))))
;;       (synopsis "Tools that support the Go programming language")
;;       (description "This package provides miscellaneous tools that support the
;; Go programming language.")
;;       (home-page "https://go.googlesource.com/tools/")
;;       (license license:bsd-3))))

;; (define-public go-golang-org-x-crypto
;;   (let ((commit "2aa609cf4a9d7d1126360de73b55b6002f9e052a")
;;         (revision "5"))
;;     (package
;;       (name "go-golang-org-x-crypto")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/crypto")
;;                       (commit commit)))
;;                 (file-name (string-append "go.googlesource.com-crypto-"
;;                                           version "-checkout"))
;;                 (sha256
;;                  (base32
;;                   "1yvis6fqbsd7f356aqyi18f76vnwj3bry6mxqnkvshq4cwrf92il"))))
;;       (build-system go-build-system)
;;       (arguments
;;        '(#:import-path "golang.org/x/crypto"
;;          ;; Source-only package
;;          #:tests? #f
;;          #:phases
;;          (modify-phases %standard-phases
;;            ;; Source-only package
;;            (delete 'build)
;;            (add-before 'reset-gzip-timestamps 'make-gzip-archive-writable
;;              (lambda* (#:key outputs #:allow-other-keys)
;;                (map (lambda (file)
;;                       (make-file-writable file))
;;                     (find-files
;;                       (string-append (assoc-ref outputs "out")
;;                                      "/src/golang.org/x/crypto/ed25519/testdata")
;;                       ".*\\.gz$"))
;;                #t)))))
;;       (propagated-inputs
;;        `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;       (synopsis "Supplementary cryptographic libraries in Go")
;;       (description "This package provides supplementary cryptographic libraries
;; for the Go language.")
;;       (home-page "https://go.googlesource.com/crypto/")
;;       (license license:bsd-3))))

;; (define-public go-golang-org-x-net
;;   (let ((commit "ba9fcec4b297b415637633c5a6e8fa592e4a16c3")
;;         (revision "4"))
;;     (package
;;       (name "go-golang-org-x-net")
;;       (version (git-version "0.0.0" revision commit))
;;       (source (origin
;;                 (method git-fetch)
;;                 (uri (git-reference
;;                       (url "https://go.googlesource.com/net")
;;                       (commit commit)))
;;                 (file-name (git-file-name name version))
;;                 (sha256
;;                  (base32
;;                   "1hbqvy6r0s5h0dpdqw8fynl3cq0acin3iyqki9xvl5r8h33yb9bx"))))
;;       (build-system go-build-system)
;;       (arguments
;;        `(#:import-path "golang.org/x/net"
;;          ; Source-only package
;;          #:tests? #f
;;          #:phases
;;          (modify-phases %standard-phases
;;            (delete 'build))))
;;       (synopsis "Go supplemental networking libraries")
;;       (description "This package provides supplemental Go networking libraries.")
;;       (home-page "https://go.googlesource.com/net")
;;       (license license:bsd-3))))

;; (define-public go-github-com-stretchr-testify
;;   (package
;;     (name "go-github-com-stretchr-testify")
;;     (version "1.5.1")
;;     (source
;;      (origin
;;        (method git-fetch)
;;        (uri (git-reference
;;              (url "https://github.com/stretchr/testify")
;;              (commit (string-append "v" version))))
;;        (file-name (git-file-name name version))
;;        (sha256
;;         (base32
;;          "09r89m1wy4cjv2nps1ykp00qjpi0531r07q3s34hr7m6njk4srkl"))))
;;     (build-system go-build-system)
;;     (arguments
;;      '(#:import-path "github.com/stretchr/testify"))
;;     (propagated-inputs
;;      `(("github.com/davecgh/go-spew" ,go-github-com-davecgh-go-spew)
;;        ("github.com/pmezard/go-difflib" ,go-github-com-pmezard-go-difflib)
;;        ("github.com/stretchr/objx" ,go-github-com-stretchr-objx)
;;        ("gopkg.in/yaml.v2" ,go-gopkg-in-yaml-v2)))
;;     (home-page "https://github.com/stretchr/testify")
;;     (synopsis "Go helper library for tests and invariant checking")
;;     (description "This package provide many tools for testifying that your
;; code will behave as you intend.

;; Features include:
;; @itemize
;; @item Easy assertions
;; @item Mocking
;; @item HTTP response trapping
;; @item Testing suite interfaces and functions.
;; @end itemize")
;;     (license license:expat)))

;; (define-public go-golang-org-x-exp
;;   (package
;;     (name "go-golang-org-x-exp")
;;     (version "0.0.0-20211012155715-ffe10e552389")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/exp")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0lprkb08km31iv1hmmrl9b206xaps50jmpx3whkxmmnhbaq0phhb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "golang.org/x/exp"))
;;     (propagated-inputs
;;       `(("go-honnef-co-go-tools" ,go-honnef-co-go-tools)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-mod" ,go-golang-org-x-mod)
;;         ("go-golang-org-x-mobile" ,go-golang-org-x-mobile)
;;         ("go-golang-org-x-image" ,go-golang-org-x-image)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
;;         ("go-go-opentelemetry-io-otel-trace"
;;          ,go-go-opentelemetry-io-otel-trace)
;;         ("go-go-opentelemetry-io-otel-sdk" ,go-go-opentelemetry-io-otel-sdk)
;;         ("go-go-opentelemetry-io-otel-metric"
;;          ,go-go-opentelemetry-io-otel-metric)
;;         ("go-go-opentelemetry-io-otel" ,go-go-opentelemetry-io-otel)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-rs-zerolog" ,go-github-com-rs-zerolog)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-go-logr-logr" ,go-github-com-go-logr-logr)
;;         ("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)
;;         ("go-github-com-go-kit-kit" ,go-github-com-go-kit-kit)
;;         ("go-github-com-go-gl-glfw-v3-3-glfw"
;;          ,go-github-com-go-gl-glfw-v3-3-glfw)
;;         ("go-github-com-burntsushi-xgb" ,go-github-com-burntsushi-xgb)
;;         ("go-dmitri-shuralyov-com-gpu-mtl" ,go-dmitri-shuralyov-com-gpu-mtl)))
;;     (home-page "https://golang.org/x/exp")
;;     (synopsis "exp")
;;     (description
;;       "This subrepository holds experimental and deprecated (in the old
;;        directory) packages.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-hdrhistogram-hdrhistogram-go
;;   (package
;;     (name "go-github-com-hdrhistogram-hdrhistogram-go")
;;     (version "1.1.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/HdrHistogram/hdrhistogram-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0l12j3dvljp868p1d2izpiq7ysll05fchvxij8zb8r160lmqv58r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/HdrHistogram/hdrhistogram-go"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-gonum-org-v1-gonum" ,go-gonum-org-v1-gonum)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-exp" ,go-golang-org-x-exp)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-niemeyer-pretty" ,go-github-com-niemeyer-pretty)
;;         ("go-github-com-kr-text" ,go-github-com-kr-text)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/HdrHistogram/hdrhistogram-go")
;;     (synopsis "hdrhistogram-go")
;;     (description
;;       "Package hdrhistogram provides an implementation of Gil Tene's HDR Histogram
;;        data structure.  The HDR Histogram allows for fast and accurate analysis of
;;        the extreme ranges of data with non-normal distributions, like latency.")
;;     (license license:expat)))

;; (define-public go-github-com-knetic-govaluate
;;   (package
;;     (name "go-github-com-knetic-govaluate")
;;     (version "3.0.0+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/Knetic/govaluate")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1b0sy89hy5d1720i43ikqfcxr4v6p9g9c7rnbif8s6256a7c2rsq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/Knetic/govaluate"))
;;     (home-page "https://github.com/Knetic/govaluate")
;;     (synopsis "govaluate")
;;     (description
;;       "This package provides support for evaluating arbitrary C-like artithmetic/string expressions.")
;;     (license license:expat)))

;; (define-public go-github-com-aws-smithy-go
;;   (package
;;     (name "go-github-com-aws-smithy-go")
;;     (version "1.8.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/aws/smithy-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1sz6bcg60k00khhs89in8vapgqzkjm26fampa79b8al887fc7qsh"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/aws/smithy-go"))
;;     (propagated-inputs
;;       `(("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/aws/smithy-go")
;;     (synopsis "Smithy Go")
;;     (description
;;       "Package smithy provides the core components for a Smithy SDK.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-beorn7-perks
;;   (package
;;     (name "go-github-com-beorn7-perks")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/beorn7/perks")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "17n4yygjxa6p499dj3yaqzfww2g7528165cl13haj97hlx94dgl7"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/beorn7/perks"))
;;     (home-page "https://github.com/beorn7/perks")
;;     (synopsis "Perks for Go (golang.org)")
;;     (description
;;       "Perks contains the Go package quantile that computes approximate quantiles over
;;        an unbounded data stream within low memory and CPU bounds.")
;;     (license license:expat)))

;; (define-public go-github-com-cenkalti-backoff-v4
;;   (package
;;     (name "go-github-com-cenkalti-backoff-v4")
;;     (version "4.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cenkalti/backoff")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "08c28226q612i1pv83161y57qh16631vpc51ai9f76qfrzsy946z"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cenkalti/backoff/v4"))
;;     (home-page "https://github.com/cenkalti/backoff")
;;     (synopsis "Exponential Backoff")
;;     (description
;;       "Package backoff implements backoff algorithms for retrying operations.")
;;     (license license:expat)))

;; (define-public go-github-com-clbanning-mxj
;;   (package
;;     (name "go-github-com-clbanning-mxj")
;;     (version "1.8.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/clbanning/mxj")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "13qlrycdp63q1v8sdpv6n720b6h6jpg58r38ldg4a70iv1wg7s9g"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/clbanning/mxj"))
;;     (home-page "https://github.com/clbanning/mxj")
;;     (synopsis "Decode/encode XML to/from map[string]interface{} values.")
;;     (description
;;       "Marshal/Unmarshal XML to/from map[string]interface{} values (and JSON);
;;        extract/modify values from maps by key or key-path, including wildcards.")
;;     (license license:expat)))

;; (define-public go-github-com-godbus-dbus-v5
;;   (package
;;     (name "go-github-com-godbus-dbus-v5")
;;     (version "5.0.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/godbus/dbus")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "09nx3v4170qjkvnk1nfzv5bmyki7sivarjr3yc01zxbp7q4p0blp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/godbus/dbus/v5"))
;;     (home-page "https://github.com/godbus/dbus")
;;     (synopsis "dbus")
;;     (description
;;       "Package dbus implements bindings to the D-Bus message bus system.")
;;     (license license:bsd-2)))

;; (define-public go-github-com-coreos-go-systemd-v22
;;   (package
;;     (name "go-github-com-coreos-go-systemd-v22")
;;     (version "22.3.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/coreos/go-systemd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ndi86b8va84ha93njqgafypz4di7yxfd5r5kf1r0s3y3ghcjajq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/coreos/go-systemd/v22"))
;;     (propagated-inputs
;;       `(("go-github-com-godbus-dbus-v5" ,go-github-com-godbus-dbus-v5)))
;;     (home-page "https://github.com/coreos/go-systemd")
;;     (synopsis "go-systemd")
;;     (description "Go bindings to systemd.  The project has several packages:")
;;     (license license:asl2.0)))

;; (define-public go-github-com-edsrzf-mmap-go
;;   (package
;;     (name "go-github-com-edsrzf-mmap-go")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/edsrzf/mmap-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ajmkk5cj6xmbngx3nhar7672i2vrkwpnbv1f26i5p4f5aydhl4k"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/edsrzf/mmap-go"))
;;     (home-page "https://github.com/edsrzf/mmap-go")
;;     (synopsis "mmap-go")
;;     (description
;;       "Package mmap allows mapping files into memory.  It tries to provide a simple, reasonably portable interface,
;;        but doesn't go out of its way to abstract away every little platform detail.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-franela-goreq
;;   (package
;;     (name "go-github-com-franela-goreq")
;;     (version "0.0.0-20171204163338-bcd34c9993f8")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/franela/goreq")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "055a20nc5f1blk2swiwpwqpxd3z495ms1qr6a7cbbss1w3a7a7sb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/franela/goreq"))
;;     (home-page "https://github.com/franela/goreq")
;;     (synopsis "GoReq")
;;     (description "Simple and sane HTTP request library for Go language.")
;;     (license license:expat)))

;; (define-public go-github-com-go-logfmt-logfmt
;;   (package
;;     (name "go-github-com-go-logfmt-logfmt")
;;     (version "0.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-logfmt/logfmt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "01fs4x2aqw2qcsz18s4nfvyqv3rcwz5xmgpk3bic6nzgyzsjd7dp"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-logfmt/logfmt"))
;;     (home-page "https://github.com/go-logfmt/logfmt")
;;     (synopsis "logfmt")
;;     (description
;;       "Package logfmt implements utilities to marshal and unmarshal data in the
;;        logfmt format.  The logfmt format records key/value pairs in a way that
;;        balances readability for humans and simplicity of computer parsing.  It is
;;        most commonly used as a more human friendly alternative to JSON for
;;        structured logging.")
;;     (license license:expat)))

;; (define-public go-github-com-golang-groupcache
;;   (package
;;     (name "go-github-com-golang-groupcache")
;;     (version "0.0.0-20210331224755-41bb18bfe9da")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/groupcache")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07amgr8ji4mnq91qbsw2jlcmw6hqiwdf4kzfdrj8c4b05w4knszc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/groupcache"))
;;     (home-page "https://github.com/golang/groupcache")
;;     (synopsis "groupcache")
;;     (description
;;       "Package groupcache provides a data loading mechanism with caching
;;        and de-duplication that works across a set of peer processes.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-go-rootcerts
;;   (package
;;     (name "go-github-com-hashicorp-go-rootcerts")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-rootcerts")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06z1bxcnr0rma02b6r52m6y0q7niikqjs090vm1i8xi3scyaw1qa"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-rootcerts"))
;;     (propagated-inputs
;;       `(("go-github-com-mitchellh-go-homedir"
;;          ,go-github-com-mitchellh-go-homedir)))
;;     (home-page "https://github.com/hashicorp/go-rootcerts")
;;     (synopsis "rootcerts")
;;     (description
;;       "Package rootcerts contains functions to aid in loading CA certificates for
;;        TLS connections.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-armon-circbuf
;;   (package
;;     (name "go-github-com-armon-circbuf")
;;     (version "0.0.0-20190214190532-5111143e8da2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/armon/circbuf")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nhzs8wza5sxqjh0920jypy9irq6cspd55g8a9vgyjjfrqb5njs0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/armon/circbuf"))
;;     (home-page "https://github.com/armon/circbuf")
;;     (synopsis "circbuf")
;;     (description
;;       "This repository provides the circbuf package.  This provides a Buffer object
;;        which is a circular (or ring) buffer.  It has a fixed size, but can be written
;;        to infinitely.  Only the last size bytes are ever retained.  The buffer implements
;;        the io.Writer interface.")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-logutils
;;   (package
;;     (name "go-github-com-hashicorp-logutils")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/logutils")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "076wf4sh5p3f953ndqk1cc0x7jhmlqrxak9953rz79rcdw77rjvv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/logutils"))
;;     (home-page "https://github.com/hashicorp/logutils")
;;     (synopsis "logutils")
;;     (description
;;       "Package logutils augments the standard log package with levels.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-mdns
;;   (package
;;     (name "go-github-com-hashicorp-mdns")
;;     (version "1.0.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/mdns")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1r0l8akczckyzdrp2jjhqwrn5a55nahhxdvnxzy58ad31k9ig1xr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/mdns"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)))
;;     (home-page "https://github.com/hashicorp/mdns")
;;     (synopsis "mdns")
;;     (description
;;       "Simple mDNS client/server library in Golang.  mDNS or Multicast DNS can be
;;        used to discover services on the local network without the use of an authoritative
;;        DNS server.  This enables peer-to-peer discovery.  It is important to note that many
;;        networks restrict the use of multicasting, which prevents mDNS from functioning.
;;        Notably, multicast cannot be used in any sort of cloud, or shared infrastructure
;;        environment.  However it works well in most office, home, or private infrastructure
;;        environments.")
;;     (license license:expat)))

;; (define-public go-github-com-datadog-datadog-go
;;   (package
;;     (name "go-github-com-datadog-datadog-go")
;;     (version "4.8.2+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/DataDog/datadog-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "12phb1mnn6z1i227z3b27g9d3vq8nbf65hkpkryim1w6g8z0rkkx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/DataDog/datadog-go"))
;;     (home-page "https://github.com/DataDog/datadog-go")
;;     (synopsis "Datadog Go")
;;     (description
;;       "datadog-go is a library that provides a DogStatsD client in Golang.")
;;     (license license:expat)))

;; (define-public go-github-com-circonus-labs-circonus-gometrics
;;   (package
;;     (name "go-github-com-circonus-labs-circonus-gometrics")
;;     (version "2.3.1+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/circonus-labs/circonus-gometrics")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0s2wir711h0k2h8xsypgpzshccnx8jkwjfni7n32l7wd8yng9ngs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/circonus-labs/circonus-gometrics"))
;;     (home-page "https://github.com/circonus-labs/circonus-gometrics")
;;     (synopsis "Circonus metrics tracking for Go applications")
;;     (description
;;       "Package circonusgometrics provides instrumentation for your applications in the form
;;        of counters, gauges and histograms and allows you to publish them to
;;        Circonus")
;;     (license license:bsd-3)))

;; (define-public go-github-com-circonus-labs-circonusllhist
;;   (package
;;     (name "go-github-com-circonus-labs-circonusllhist")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/openhistogram/circonusllhist")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "04dkhd0np0kg2rmsnghg613x93glkxhllzjh3ha8k77wdcw6mcak"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/circonus-labs/circonusllhist"))
;;     (home-page "https://github.com/circonus-labs/circonusllhist")
;;     (synopsis #f)
;;     (description
;;       "Package circllhist provides an implementation of Circonus' fixed log-linear
;;        histogram data structure.  This allows tracking of histograms in a
;;        composable way such that accurate error can be reasoned about.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-hashicorp-go-cleanhttp
;;   (package
;;     (name "go-github-com-hashicorp-go-cleanhttp")
;;     (version "0.5.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-cleanhttp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1i5xslizzwd966w81bz6dxjwzgml4q9bwqa186bsxd1vi8lqxl9p"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-cleanhttp"))
;;     (home-page "https://github.com/hashicorp/go-cleanhttp")
;;     (synopsis "cleanhttp")
;;     (description
;;       "Package cleanhttp offers convenience utilities for acquiring \"clean\"
;;        http.Transport and http.Client structs.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-hclog
;;   (package
;;     (name "go-github-com-hashicorp-go-hclog")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-hclog")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1bhpqrjjfsr97wkr8dkwzxsvfvxbbmwq6z4cfpgq7zaccda76n9r"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-hclog"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-fatih-color" ,go-github-com-fatih-color)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/hashicorp/go-hclog")
;;     (synopsis "go-hclog")
;;     (description
;;       "go-hclog is a package for Go that provides a simple key/value logging
;;        interface for use in development and production environments.")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-go-retryablehttp
;;   (package
;;     (name "go-github-com-hashicorp-go-retryablehttp")
;;     (version "0.7.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-retryablehttp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1pq6a7qyb4yvbvbpkqw8qq2qnk3i3mfalfg61g4lnddf33wad8yl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-retryablehttp"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)))
;;     (home-page "https://github.com/hashicorp/go-retryablehttp")
;;     (synopsis "go-retryablehttp")
;;     (description
;;       "Package retryablehttp provides a familiar HTTP client interface with
;;        automatic retries and exponential backoff. It is a thin wrapper over the
;;        standard net/http client library and exposes nearly the same public API.
;;        This makes retryablehttp very easy to drop into existing programs.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-armon-go-metrics
;;   (package
;;     (name "go-github-com-armon-go-metrics")
;;     (version "0.3.9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/armon/go-metrics")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0sbnzw7sdjcf2l6nsxynpv99m6sza1zyakl82by37sqhn60hj9is"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/armon/go-metrics"))
;;     (propagated-inputs
;;       `(("go-github-com-tv42-httpunix" ,go-github-com-tv42-httpunix)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pascaldekloe-goe" ,go-github-com-pascaldekloe-goe)
;;         ("go-github-com-hashicorp-go-retryablehttp"
;;          ,go-github-com-hashicorp-go-retryablehttp)
;;         ("go-github-com-hashicorp-go-immutable-radix"
;;          ,go-github-com-hashicorp-go-immutable-radix)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-circonus-labs-circonusllhist"
;;          ,go-github-com-circonus-labs-circonusllhist)
;;         ("go-github-com-circonus-labs-circonus-gometrics"
;;          ,go-github-com-circonus-labs-circonus-gometrics)
;;         ("go-github-com-datadog-datadog-go"
;;          ,go-github-com-datadog-datadog-go)))
;;     (home-page "https://github.com/armon/go-metrics")
;;     (synopsis "go-metrics")
;;     (description
;;       "This library provides a metrics package which can be used to instrument code,
;;        expose application metrics, and profile runtime performance in a flexible manner.")
;;     (license license:expat)))

;; (define-public go-github-com-google-btree
;;   (package
;;     (name "go-github-com-google-btree")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/btree")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0fv5577bmpf2gkzw8z271q8mn3x6fqyzqjrbzm580bqld0a1xwnl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/btree"))
;;     (home-page "https://github.com/google/btree")
;;     (synopsis "BTree implementation for Go")
;;     (description
;;       "Package btree implements in-memory B-Trees of arbitrary degree.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-hashicorp-go-uuid
;;   (package
;;     (name "go-github-com-hashicorp-go-uuid")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-uuid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1azjn5a03cv0bdab3clmkfz8g9807nxxjwy9i7dy73p7d4sikhja"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-uuid"))
;;     (home-page "https://github.com/hashicorp/go-uuid")
;;     (synopsis "uuid")
;;     (description
;;       "Generates UUID-format strings using high quality,  bytes.  It is not intended to be RFC compliant, 
;;        merely to use a well-understood string representation of a 128-bit value.  It can also 
;;        parse UUID-format strings into their component bytes.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-golang-lru
;;   (package
;;     (name "go-github-com-hashicorp-golang-lru")
;;     (version "0.5.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/golang-lru")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1sdbymypp9vrnzp8ashw0idlxvaq0rb0alwxx3x8g27yjlqi9jfn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/golang-lru"))
;;     (home-page "https://github.com/hashicorp/golang-lru")
;;     (synopsis "golang-lru")
;;     (description
;;       "Package lru provides three different LRU caches of varying sophistication.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-immutable-radix
;;   (package
;;     (name "go-github-com-hashicorp-go-immutable-radix")
;;     (version "1.3.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-immutable-radix")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0s7sf8y5lj8rx4gdymrz29gg6y2xwksfpgniaz32yzcmg3c817zb"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-immutable-radix"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)))
;;     (home-page "https://github.com/hashicorp/go-immutable-radix")
;;     (synopsis "go-immutable-radix")
;;     (description
;;       "This package provides the iradix package that implements an immutable radix tree.
;;        The package only provides a single Tree implementation, optimized for sparse nodes.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-msgpack
;;   (package
;;     (name "go-github-com-hashicorp-go-msgpack")
;;     (version "1.1.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-msgpack")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1waxi42kpnvb62xb027kqh830im2hqsh4si2j0an79mnjm2wzlpx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-msgpack"))
;;     (propagated-inputs `(("go-golang-org-x-tools" ,go-golang-org-x-tools)))
;;     (home-page "https://github.com/hashicorp/go-msgpack")
;;     (synopsis "go-codec")
;;     (description "This repository contains the go-codec library.")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-go-sockaddr
;;   (package
;;     (name "go-github-com-hashicorp-go-sockaddr")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-sockaddr")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y106nhd3s63lj7h7k21iq0br97h0z9qjrvx028zqcsq9407k9is"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-sockaddr"))
;;     (propagated-inputs
;;       `(("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
;;         ("go-github-com-mitchellh-go-wordwrap"
;;          ,go-github-com-mitchellh-go-wordwrap)
;;         ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
;;         ("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)))
;;     (home-page "https://github.com/hashicorp/go-sockaddr")
;;     (synopsis "go-sockaddr")
;;     (description
;;       "Package sockaddr is a Go implementation of the UNIX socket family data types and
;;        related helper functions.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-pascaldekloe-goe
;;   (package
;;     (name "go-github-com-pascaldekloe-goe")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/pascaldekloe/goe")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1dqd3mfb4z2vmv6pg6fhgvfc53vhndk24wcl9lj1rz02n6m279fq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/pascaldekloe/goe"))
;;     (home-page "https://github.com/pascaldekloe/goe")
;;     (synopsis "Go Enterprise")
;;     (description
;;       "Common enterprise features for the Go programming language (golang).")
;;     (license license:cc0)))

;; (define-public go-github-com-sean--seed
;;   (package
;;     (name "go-github-com-sean--seed")
;;     (version "0.0.0-20170313163322-e2103e2c3529")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/sean-/seed")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0glir8jxi1w7aga2jwdb63pp1h8q4whknili7xixsqzwyy716125"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/sean-/seed"))
;;     (home-page "https://github.com/sean-/seed")
;;     (synopsis "- Quickly Seed Go's Random Number Generator")
;;     (description
;;       "Boiler-plate to securely seed Go's random number generator (if possible).  
;;        This library isn't anything fancy, it's just a canonical way of seeding Go's 
;;        random number generator.  Cribbed from (code Nomad) before it was moved into
;;        (code Consul) and made into a helper function, and now further modularized to 
;;        be a super lightweight and reusable library.")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-memberlist
;;   (package
;;     (name "go-github-com-hashicorp-memberlist")
;;     (version "0.2.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/memberlist")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1kd2pzphdkpw3fvv1yd6kj9492nwnjcbmznhmw6fm9yqqrix9n78"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/memberlist"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-sean--seed" ,go-github-com-sean--seed)
;;         ("go-github-com-pmezard-go-difflib" ,go-github-com-pmezard-go-difflib)
;;         ("go-github-com-pascaldekloe-goe" ,go-github-com-pascaldekloe-goe)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-hashicorp-go-sockaddr"
;;          ,go-github-com-hashicorp-go-sockaddr)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-hashicorp-go-immutable-radix"
;;          ,go-github-com-hashicorp-go-immutable-radix)
;;         ("go-github-com-google-btree" ,go-github-com-google-btree)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)))
;;     (home-page "https://github.com/hashicorp/memberlist")
;;     (synopsis "memberlist")
;;     (description
;;       "memberlist is a library that manages cluster membership and member failure
;;        detection using a gossip based protocol.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-armon-go-radix
;;   (package
;;     (name "go-github-com-armon-go-radix")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/armon/go-radix")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1m1k0jz9gjfrk4m7hjm7p03qmviamfgxwm2ghakqxw3hdds8v503"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/armon/go-radix"))
;;     (home-page "https://github.com/armon/go-radix")
;;     (synopsis "go-radix")
;;     (description
;;       "This package provides the radix package that implements a radix tree. The package only provides 
;;        a single Tree implementation, optimized for sparse nodes.")
;;     (license license:expat)))

;; (define-public go-github-com-bgentry-speakeasy
;;   (package
;;     (name "go-github-com-bgentry-speakeasy")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/bgentry/speakeasy")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "02dfrj0wyphd3db9zn2mixqxwiz1ivnyc5xc7gkz58l5l27nzp8s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/bgentry/speakeasy"))
;;     (home-page "https://github.com/bgentry/speakeasy")
;;     (synopsis "Speakeasy")
;;     (description
;;       "This package provides cross-platform Go (#golang) helpers for taking user input
;;        from the terminal while not echoing the input back (similar to getpasswd).  The
;;        package uses syscalls to avoid any dependence on cgo, and is therefore
;;        compatible with cross-compiling.")
;;     (license license:expat)))

;; (define-public go-github-com-mitchellh-cli
;;   (package
;;     (name "go-github-com-mitchellh-cli")
;;     (version "1.1.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/mitchellh/cli")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nb6452rkd7xrfm7pn8ljnwka26db5nac0l1l4zw4zz3h1mihs50"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/mitchellh/cli"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-posener-complete" ,go-github-com-posener-complete)
;;         ("go-github-com-mitchellh-copystructure"
;;          ,go-github-com-mitchellh-copystructure)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-imdario-mergo" ,go-github-com-imdario-mergo)
;;         ("go-github-com-huandu-xstrings" ,go-github-com-huandu-xstrings)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-fatih-color" ,go-github-com-fatih-color)
;;         ("go-github-com-bgentry-speakeasy" ,go-github-com-bgentry-speakeasy)
;;         ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
;;         ("go-github-com-masterminds-sprig" ,go-github-com-masterminds-sprig)
;;         ("go-github-com-masterminds-semver" ,go-github-com-masterminds-semver)
;;         ("go-github-com-masterminds-goutils"
;;          ,go-github-com-masterminds-goutils)))
;;     (home-page "https://github.com/mitchellh/cli")
;;     (synopsis "Go CLI Library")
;;     (description
;;       "cli is a library for implementing powerful command-line interfaces in Go.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-errwrap
;;   (package
;;     (name "go-github-com-hashicorp-errwrap")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/errwrap")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0p5wdz8p7dmwphmb33gwhy3iwci5k9wkfqmmfa6ay1lz0cqjwp7a"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/errwrap"))
;;     (home-page "https://github.com/hashicorp/errwrap")
;;     (synopsis "errwrap")
;;     (description
;;       "Package errwrap implements methods to formalize error wrapping in Go.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-hashicorp-go-multierror
;;   (package
;;     (name "go-github-com-hashicorp-go-multierror")
;;     (version "1.1.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/go-multierror")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0l4s41skdpifndn9s8y6s9vzgghdzg4z8z0lld9qjr28888wzp00"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/go-multierror"))
;;     (propagated-inputs
;;       `(("go-github-com-hashicorp-errwrap" ,go-github-com-hashicorp-errwrap)))
;;     (home-page "https://github.com/hashicorp/go-multierror")
;;     (synopsis "go-multierror")
;;     (description
;;       "go-multierror is a package for Go that provides a mechanism for
;;        representing a list of error values as a single error.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-posener-complete
;;   (package
;;     (name "go-github-com-posener-complete")
;;     (version "1.2.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/posener/complete")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nri6hkfb0z3dkxf2fsfidr4bxbn91rjsqhg5s0c2jplf0aclppz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/posener/complete"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)))
;;     (home-page "https://github.com/posener/complete")
;;     (synopsis "complete")
;;     (description
;;       "Package complete provides a tool for bash writing bash completion in go, 
;;        and bash completion for the go command line.")
;;     (license license:expat)))

;; (define-public go-github-com-ryanuber-columnize
;;   (package
;;     (name "go-github-com-ryanuber-columnize")
;;     (version "2.1.2+incompatible")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ryanuber/columnize")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0xxzzgvfabc2qx6n313vis8l4npkggiy5kjflv0arm2y7xnv73qj"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ryanuber/columnize"))
;;     (home-page "https://github.com/ryanuber/columnize")
;;     (synopsis "Columnize")
;;     (description "Easy column-formatted output for golang")
;;     (license license:expat)))

;; (define-public go-github-com-hashicorp-serf
;;   (package
;;     (name "go-github-com-hashicorp-serf")
;;     (version "0.9.5")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/hashicorp/serf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0f1rsmvp96dpsv69sbn7wkiw0r4r98nrpr2ln50zyzjzy1pmbrrx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/hashicorp/serf"))
;;     (propagated-inputs
;;       `(("go-github-com-ryanuber-columnize" ,go-github-com-ryanuber-columnize)
;;         ("go-github-com-posener-complete" ,go-github-com-posener-complete)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-mitchellh-cli" ,go-github-com-mitchellh-cli)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-hashicorp-memberlist"
;;          ,go-github-com-hashicorp-memberlist)
;;         ("go-github-com-hashicorp-mdns" ,go-github-com-hashicorp-mdns)
;;         ("go-github-com-hashicorp-logutils" ,go-github-com-hashicorp-logutils)
;;         ("go-github-com-hashicorp-go-uuid" ,go-github-com-hashicorp-go-uuid)
;;         ("go-github-com-hashicorp-go-syslog"
;;          ,go-github-com-hashicorp-go-syslog)
;;         ("go-github-com-hashicorp-go-multierror"
;;          ,go-github-com-hashicorp-go-multierror)
;;         ("go-github-com-hashicorp-go-msgpack"
;;          ,go-github-com-hashicorp-go-msgpack)
;;         ("go-github-com-fatih-color" ,go-github-com-fatih-color)
;;         ("go-github-com-armon-go-radix" ,go-github-com-armon-go-radix)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
;;         ("go-github-com-armon-circbuf" ,go-github-com-armon-circbuf)))
;;     (home-page "https://github.com/hashicorp/serf")
;;     (synopsis "Serf")
;;     (description
;;       "Serf is a decentralized solution for service discovery and orchestration
;;        that is lightweight, highly available, and fault tolerant.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-matttproud-golang-protobuf-extensions
;;   (package
;;     (name "go-github-com-matttproud-golang-protobuf-extensions")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/matttproud/golang_protobuf_extensions")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1d0c1isd2lk9pnfq2nk0aih356j30k3h1gi2w0ixsivi5csl7jya"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/matttproud/golang_protobuf_extensions"))
;;     (home-page "https://github.com/matttproud/golang_protobuf_extensions")
;;     (synopsis "Overview")
;;     (description
;;       "This repository provides various Protocol Buffer extensions for the Go
;;        language (golang), namely support for record length-delimited message
;;        streaming.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-miekg-dns
;;   (package
;;     (name "go-github-com-miekg-dns")
;;     (version "1.1.43")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/miekg/dns")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "071nz8l4ml347ivzdfjn5vsy089mprislyah62hvbiv4d4f4nsqm"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/miekg/dns"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)))
;;     (home-page "https://github.com/miekg/dns")
;;     (synopsis "Alternative (more granular) approach to a DNS library")
;;     (description
;;       "Package dns implements a full featured interface to the Domain Name System.
;;        Both server- and client-side programming is supported.  The package allows
;;        complete control over what is sent out to the DNS.  The API follows the
;;        less-is-more principle, by presenting a small, clean interface.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-minio-highwayhash
;;   (package
;;     (name "go-github-com-minio-highwayhash")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/minio/highwayhash")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1inrix7720273ccynxcyi7xsgc55cskxrw7gwn08qkmdj9xdxqai"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/minio/highwayhash"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/minio/highwayhash")
;;     (synopsis "HighwayHash")
;;     (description
;;       "Package highwayhash implements the pseudo-random-function (PRF) HighwayHash.
;;        HighwayHash is a fast hash function designed to defend hash-flooding attacks
;;        or to authenticate short-lived messages.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-nats-io-jwt-v2
;;   (package
;;     (name "go-github-com-nats-io-jwt-v2")
;;     (version "2.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nats-io/jwt")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05h52c0h3khhmf1s4x5hs4bcnpgfgxz7k8c6lwjpiyn7hf8psnf5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nats-io/jwt/v2"))
;;     (propagated-inputs
;;       `(("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)))
;;     (home-page "https://github.com/nats-io/jwt")
;;     (synopsis "JWT tokens signed using NKeys for Ed25519 for the NATS ecosystem.")
;;     (description
;;       "A JWT implementation that uses nkeys to digitally sign JWT tokens. Nkeys use Ed25519 
;;        to provide authentication of JWT claims.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-nats-io-nkeys
;;   (package
;;     (name "go-github-com-nats-io-nkeys")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nats-io/nkeys")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06wbmb3cxjrcfvgfbn6rdfzb4pfaaw11bnvl1r4kig4ag22qcz7b"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nats-io/nkeys"))
;;     (propagated-inputs `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/nats-io/nkeys")
;;     (synopsis "NATS Keys")
;;     (description
;;       "Package nkeys is an Ed25519 based public-key signature system that simplifies keys and seeds
;;        and performs signing and verification.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-nats-io-nuid
;;   (package
;;     (name "go-github-com-nats-io-nuid")
;;     (version "1.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/nats-io/nuid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11zbhg4kds5idsya04bwz4plj0mmiigypzppzih731ppbk2ms1zg"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/nats-io/nuid"))
;;     (home-page "https://github.com/nats-io/nuid")
;;     (synopsis "NATS Unique Identifiers")
;;     (description
;;       "This package provides a unique identifier generator that is high performance, 
;;        very fast, and tries to be entropy pool friendly.")
;;     (license license:asl2.0)))

;; (define-public go-go-etcd-io-etcd-api-v3
;;   (package
;;     (name "go-go-etcd-io-etcd-api-v3")
;;     (version "3.5.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/etcd-io/etcd")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0szqasja7mwm8glhaz9wisrr62g56hngkpf5y0f9f1frcq0wk7i2"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "go.etcd.io/etcd/api/v3"
;;         #:unpack-path
;;         "go.etcd.io/etcd/api/v3"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-github-com-grpc-ecosystem-grpc-gateway"
;;          ,go-github-com-grpc-ecosystem-grpc-gateway)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-coreos-go-semver" ,go-github-com-coreos-go-semver)))
;;     (home-page "https://go.etcd.io/etcd/api/v3")
;;     (synopsis "Distributed reliable key-value store for the most critical data of a distributed system")
;;     (description
;;      "etcd is a distributed reliable key-value store for the most critical data of a distributed system, with a focus on being:

;;       * Simple: well-defined, user-facing API (gRPC)
;;       * Secure: automatic TLS with optional client cert authentication
;;       * Fast: benchmarked 10,000 writes/sec
;;       * Reliable: properly distributed using Raft")
;;     (license license:asl2.0)))

;; (define-public go-github-com-cespare-xxhash-v2
;;   (package
;;     (name "go-github-com-cespare-xxhash-v2")
;;     (version "2.1.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cespare/xxhash")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1f3wyr9msnnz94szrkmnfps9wm40s5sp9i4ak0kl92zcrkmpy29a"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/cespare/xxhash/v2"))
;;     (home-page "https://github.com/cespare/xxhash")
;;     (synopsis "xxhash")
;;     (description
;;       "Package xxhash implements the 64-bit variant of xxHash (XXH64) as described
;;        at http://cyan4973.github.io/xxHash/.")
;;     (license license:expat)))

;; (define-public go-github-com-cncf-udpa-go
;;   (package
;;     (name "go-github-com-cncf-udpa-go")
;;     (version "0.0.0-20210930031921-04548b0d99d4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cncf/udpa")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "16z9iqs7g6c084fh6y9v3skdbxnpyqw3d1y19v42llyl9hzx361v"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/cncf/udpa/go"
;;         #:unpack-path
;;         "github.com/cncf/udpa"))
;;     (propagated-inputs
;;       `(("go-github-com-cncf-xds-go" ,go-github-com-cncf-xds-go)))
;;     (home-page "https://github.com/cncf/udpa")
;;     (synopsis "Description")
;;     (description
;;       "This library has been deprecated in favor of github.com/cncf/xds/go.  
;;        All users are recommended to switch their imports.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-census-instrumentation-opencensus-proto
;;   (package
;;     (name "go-github-com-census-instrumentation-opencensus-proto")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/census-instrumentation/opencensus-proto")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ngp6jb345xahsijjpwwlcy2giymyzsy7kdhkrvgjafqssk6aw6f"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "github.com/census-instrumentation/opencensus-proto"))
;;     (home-page "https://github.com/census-instrumentation/opencensus-proto")
;;     (synopsis
;;       "OpenCensus Proto - Language Independent Interface Types For OpenCensus")
;;     (description
;;       "Census provides a framework to define and collect stats against metrics and to
;;        break those stats down across user-defined dimensions.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-cncf-xds-go
;;   (package
;;     (name "go-github-com-cncf-xds-go")
;;     (version "0.0.0-20211011173535-cb28da3451f1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/cncf/xds")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1m32hvpcv7lq5y1mgdxhd0i8kcswsjbi2x8y2imr7gv9g6nha2fd"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/cncf/xds/go"
;;         #:unpack-path
;;         "github.com/cncf/xds"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-envoyproxy-protoc-gen-validate"
;;          ,go-github-com-envoyproxy-protoc-gen-validate)))
;;     (home-page "https://github.com/cncf/xds")
;;     (synopsis "xDS API Working Group")
;;     (description
;;      "The objective of the xDS API Working Group (xDS-WG) is to bring together parties across
;;       the industry interested in a common control and configuration API for data plane proxies 
;;       and load balancers, based on the xDS API")
;;     (license license:asl2.0)))

;; (define-public go-github-com-iancoleman-strcase
;;   (package
;;     (name "go-github-com-iancoleman-strcase")
;;     (version "0.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/iancoleman/strcase")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0rgfn6zz1r9h7yic3b0dcqq900bi638d6qgcyy9jhvk00f4dlg5j"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/iancoleman/strcase"))
;;     (home-page "https://github.com/iancoleman/strcase")
;;     (synopsis "A golang package for converting to snake_case or CamelCase")
;;     (description
;;       "Package strcase converts strings to various cases.")
;;     (license license:expat)))

;; (define-public go-github-com-lyft-protoc-gen-star
;;   (package
;;     (name "go-github-com-lyft-protoc-gen-star")
;;     (version "0.6.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/lyft/protoc-gen-star")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mbgwnd3nhafx9hvjbyyl38x1ch1b4nmk03pisybqfq1qyadx93q"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/lyft/protoc-gen-star"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/lyft/protoc-gen-star")
;;     (synopsis "protoc-gen-star (PG*)")
;;     (description
;;       "Package pgs provides a library for building protoc plugins")
;;     (license license:asl2.0)))

;; (define-public go-github-com-envoyproxy-protoc-gen-validate
;;   (package
;;     (name "go-github-com-envoyproxy-protoc-gen-validate")
;;     (version "0.6.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/envoyproxy/protoc-gen-validate")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "15x8klgwl98kh81la8j007jfcsx9jxmxrrmys3a7p92pf0k5vzrx"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/envoyproxy/protoc-gen-validate"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-golang-org-x-tools" ,go-golang-org-x-tools)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-lint" ,go-golang-org-x-lint)
;;         ("go-github-com-spf13-afero" ,go-github-com-spf13-afero)
;;         ("go-github-com-lyft-protoc-gen-star"
;;          ,go-github-com-lyft-protoc-gen-star)
;;         ("go-github-com-iancoleman-strcase" ,go-github-com-iancoleman-strcase)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://github.com/envoyproxy/protoc-gen-validate")
;;     (synopsis "protoc-gen-validate (PGV)")
;;     (description
;;       "PGV is a protoc plugin to generate polyglot message validators.  While protocol buffers
;;        effectively guarantee the types of structured data, they cannot enforce semantic rules for values.
;;        This plugin adds support to protoc-generated code to validate such constraints.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-antihax-optional
;;   (package
;;     (name "go-github-com-antihax-optional")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/antihax/optional")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1ix08vl49qxr58rc6201cl97g1yznhhkwvqldslawind99js4rj0"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/antihax/optional"))
;;     (home-page "https://github.com/antihax/optional")
;;     (synopsis "optional parameters for go")
;;     (description #f)
;;     (license license:expat)))

;; (define-public go-github-com-ghodss-yaml
;;   (package
;;     (name "go-github-com-ghodss-yaml")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ghodss/yaml")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0skwmimpy7hlh7pva2slpcplnm912rp3igs98xnqmn859kwa5v8g"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ghodss/yaml"))
;;     (home-page "https://github.com/ghodss/yaml")
;;     (synopsis "YAML marshaling and unmarshaling support for Go")
;;     (description
;;      "A wrapper around go-yaml designed to enable a better way of handling YAML 
;;       when marshaling to and from structs.")
;;     (license license:expat)))

;; (define-public go-github-com-rogpeppe-fastuuid
;;   (package
;;     (name "go-github-com-rogpeppe-fastuuid")
;;     (version "1.2.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rogpeppe/fastuuid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "028acdg63zkxpjz3l639nlhki2l0canr2v5jglrmwa1wpjqcfff8"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rogpeppe/fastuuid"))
;;     (home-page "https://github.com/rogpeppe/fastuuid")
;;     (synopsis "fastuuid")
;;     (description
;;       "Package fastuuid provides fast UUID generation of 192 bit
;;        universally unique identifiers.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-grpc-ecosystem-grpc-gateway
;;   (package
;;     (name "go-github-com-grpc-ecosystem-grpc-gateway")
;;     (version "1.16.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/grpc-ecosystem/grpc-gateway")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0dzq1qbgzz2c6vnh8anx0j3py34sd72p35x6s2wrl001q68am5cc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/grpc-ecosystem/grpc-gateway"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-rogpeppe-fastuuid" ,go-github-com-rogpeppe-fastuuid)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-glog" ,go-github-com-golang-glog)
;;         ("go-github-com-ghodss-yaml" ,go-github-com-ghodss-yaml)
;;         ("go-github-com-antihax-optional" ,go-github-com-antihax-optional)))
;;     (home-page "https://github.com/grpc-ecosystem/grpc-gateway")
;;     (synopsis "grpc-gateway")
;;     (description
;;       "The grpc-gateway is a plugin of the Google protocol buffers compiler protoc.
;;        It reads protobuf service definitions and generates a reverse-proxy server which
;;        translates a RESTful HTTP API into gRPC.  This server is generated according to the
;;        (code google.api.http) annotations in your service definitions.")
;;     (license license:bsd-3)))

;; (define-public go-go-opentelemetry-io-proto-otlp
;;   (package
;;     (name "go-go-opentelemetry-io-proto-otlp")
;;     (version "0.9.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/open-telemetry/opentelemetry-proto-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0f6iix9szi76x4hvia9c97yfmx0xqi29mhnn7vradk3xbhcaih9d"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "go.opentelemetry.io/proto/otlp"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-github-com-grpc-ecosystem-grpc-gateway"
;;          ,go-github-com-grpc-ecosystem-grpc-gateway)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://go.opentelemetry.io/proto/otlp")
;;     (synopsis "Generated code for OpenTelemetry protobuf data model")
;;     (description "Generated code for OpenTelemetry protobuf data model")
;;     (license license:asl2.0)))

;; (define-public go-github-com-envoyproxy-go-control-plane
;;   (package
;;     (name "go-github-com-envoyproxy-go-control-plane")
;;     (version "0.9.9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/envoyproxy/go-control-plane")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1cb3s6x2jx93cdljb9jwp2wc2iljv91h7706gq1amkkwdhdxhcdv"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/envoyproxy/go-control-plane"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-go-opentelemetry-io-proto-otlp"
;;          ,go-go-opentelemetry-io-proto-otlp)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-envoyproxy-protoc-gen-validate"
;;          ,go-github-com-envoyproxy-protoc-gen-validate)
;;         ("go-github-com-cncf-xds-go" ,go-github-com-cncf-xds-go)
;;         ("go-github-com-census-instrumentation-opencensus-proto"
;;          ,go-github-com-census-instrumentation-opencensus-proto)))
;;     (home-page "https://github.com/envoyproxy/go-control-plane")
;;     (synopsis "control-plane")
;;     (description
;;       "This repository contains a Go-based implementation of an API server that
;;        implements the discovery service APIs defined in data-plane-api.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-golang-glog
;;   (package
;;     (name "go-github-com-golang-glog")
;;     (version "1.0.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/glog")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0vm206qrvhn3d571bqcman6fnavw4y3a31ffrmv2xkk0li74h2bf"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/glog"))
;;     (home-page "https://github.com/golang/glog")
;;     (synopsis "glog")
;;     (description
;;       "Package glog implements logging analogous to the Google-internal C++ INFO/ERROR/V setup.
;;        It provides functions Info, Warning, Error, Fatal, plus formatting variants such as
;;        Infof.  It also provides V-style logging controlled by the -v and -vmodule=file=2 flags.")
;;     (license license:asl2.0)))

;; (define-public go-google-golang-org-grpc
;;   (package
;;     (name "go-google-golang-org-grpc")
;;     (version "1.41.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/grpc/grpc-go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "10a0n2lmvl8zqhcswz3sjyqil0sk0mvp892d04lfnq61wq1ssgsn"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "google.golang.org/grpc"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-oauth2" ,go-golang-org-x-oauth2)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-glog" ,go-github-com-golang-glog)
;;         ("go-github-com-envoyproxy-go-control-plane"
;;          ,go-github-com-envoyproxy-go-control-plane)
;;         ("go-github-com-cncf-udpa-go" ,go-github-com-cncf-udpa-go)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)))
;;     (home-page "https://google.golang.org/grpc")
;;     (synopsis "gRPC-Go")
;;     (description "Package grpc implements an RPC system called gRPC.")
;;     (license license:asl2.0)))

;; (define-public go-google-golang-org-genproto
;;   (package
;;     (name "go-google-golang-org-genproto")
;;     (version "0.0.0-20211018162055-cf77aa76bad2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/googleapis/go-genproto")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07d5jwbd9v2k3i4ssdl6b2271xn8yr8fzjg9f2467g1lhrwgxx6n"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "google.golang.org/genproto"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://google.golang.org/genproto")
;;     (synopsis "Go generated proto packages")
;;     (description
;;       "This repository contains the generated Go packages for common protocol buffer
;;        types, and the generated gRPC code necessary for interacting with Google's gRPC APIs.")
;;     (license license:asl2.0)))

;; (define-public go-gopkg-in-gcfg-v1
;;   (package
;;     (name "go-gopkg-in-gcfg-v1")
;;     (version "1.2.3")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/gcfg.v1")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "165f9wincwnkblp8x6m1f4ch4m8k4gvy5v4x4gqdpmf59kqv5y7s"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path "gopkg.in/gcfg.v1" #:unpack-path "gopkg.in/gcfg.v1"))
;;     (home-page "https://gopkg.in/gcfg.v1")
;;     (synopsis "read INI-style configuration files into Go structs; supports user-defined types and subsections")
;;     (description
;;       "Package gcfg reads \"INI-style\" text-based configuration files with
;;        \"name=value\" pairs grouped into sections (gcfg files).")
;;     (license license:bsd-3)))

;; (define-public go-gopkg-in-warnings-v0
;;   (package
;;     (name "go-gopkg-in-warnings-v0")
;;     (version "0.1.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/warnings.v0")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1kzj50jn708cingn7a13c2wdlzs6qv89dr2h4zj8d09647vlnd81"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/warnings.v0"
;;         #:unpack-path
;;         "gopkg.in/warnings.v0"))
;;     (home-page "https://gopkg.in/warnings.v0")
;;     (synopsis "Package warnings implements error handling with non-fatal errors (warnings).")
;;     (description
;;       "Package warnings implements error handling with non-fatal errors (warnings).")
;;     (license license:bsd-2)))

;; (define-public go-github-com-go-kit-kit
;;   (package
;;     (name "go-github-com-go-kit-kit")
;;     (version "0.12.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-kit/kit")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "15cm24sjyvwxpprfha2k0s3c1hhpg5y2kljnw04hayfyazqc79wl"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-kit/kit"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-warnings-v0" ,go-gopkg-in-warnings-v0)
;;         ("go-gopkg-in-gcfg-v1" ,go-gopkg-in-gcfg-v1)
;;         ("go-google-golang-org-genproto" ,go-google-golang-org-genproto)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-go-uber-org-multierr" ,go-go-uber-org-multierr)
;;         ("go-go-uber-org-atomic" ,go-go-uber-org-atomic)
;;         ("go-go-etcd-io-etcd-api-v3" ,go-go-etcd-io-etcd-api-v3)
;;         ("go-github-com-prometheus-procfs" ,go-github-com-prometheus-procfs)
;;         ("go-github-com-prometheus-common" ,go-github-com-prometheus-common)
;;         ("go-github-com-prometheus-client-model"
;;          ,go-github-com-prometheus-client-model)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-op-go-logging" ,go-github-com-op-go-logging)
;;         ("go-github-com-nats-io-nuid" ,go-github-com-nats-io-nuid)
;;         ("go-github-com-nats-io-nkeys" ,go-github-com-nats-io-nkeys)
;;         ("go-github-com-nats-io-jwt-v2" ,go-github-com-nats-io-jwt-v2)
;;         ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
;;         ("go-github-com-modern-go-concurrent"
;;          ,go-github-com-modern-go-concurrent)
;;         ("go-github-com-mitchellh-mapstructure"
;;          ,go-github-com-mitchellh-mapstructure)
;;         ("go-github-com-mitchellh-go-homedir"
;;          ,go-github-com-mitchellh-go-homedir)
;;         ("go-github-com-minio-highwayhash" ,go-github-com-minio-highwayhash)
;;         ("go-github-com-miekg-dns" ,go-github-com-miekg-dns)
;;         ("go-github-com-matttproud-golang-protobuf-extensions"
;;          ,go-github-com-matttproud-golang-protobuf-extensions)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-klauspost-compress" ,go-github-com-klauspost-compress)
;;         ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
;;         ("go-github-com-jmespath-go-jmespath"
;;          ,go-github-com-jmespath-go-jmespath)
;;         ("go-github-com-hashicorp-serf" ,go-github-com-hashicorp-serf)
;;         ("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-rootcerts"
;;          ,go-github-com-hashicorp-go-rootcerts)
;;         ("go-github-com-hashicorp-go-immutable-radix"
;;          ,go-github-com-hashicorp-go-immutable-radix)
;;         ("go-github-com-hashicorp-go-hclog" ,go-github-com-hashicorp-go-hclog)
;;         ("go-github-com-hashicorp-go-cleanhttp"
;;          ,go-github-com-hashicorp-go-cleanhttp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-golang-groupcache" ,go-github-com-golang-groupcache)
;;         ("go-github-com-gogo-protobuf" ,go-github-com-gogo-protobuf)
;;         ("go-github-com-go-logfmt-logfmt" ,go-github-com-go-logfmt-logfmt)
;;         ("go-github-com-franela-goreq" ,go-github-com-franela-goreq)
;;         ("go-github-com-fatih-color" ,go-github-com-fatih-color)
;;         ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)
;;         ("go-github-com-coreos-go-systemd-v22"
;;          ,go-github-com-coreos-go-systemd-v22)
;;         ("go-github-com-coreos-go-semver" ,go-github-com-coreos-go-semver)
;;         ("go-github-com-clbanning-mxj" ,go-github-com-clbanning-mxj)
;;         ("go-github-com-cespare-xxhash-v2" ,go-github-com-cespare-xxhash-v2)
;;         ("go-github-com-cenkalti-backoff-v4"
;;          ,go-github-com-cenkalti-backoff-v4)
;;         ("go-github-com-beorn7-perks" ,go-github-com-beorn7-perks)
;;         ("go-github-com-aws-smithy-go" ,go-github-com-aws-smithy-go)
;;         ("go-github-com-armon-go-metrics" ,go-github-com-armon-go-metrics)
;;         ("go-github-com-knetic-govaluate" ,go-github-com-knetic-govaluate)
;;         ("go-github-com-hdrhistogram-hdrhistogram-go"
;;          ,go-github-com-hdrhistogram-hdrhistogram-go)
;;         ("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-google-golang-org-grpc" ,go-google-golang-org-grpc)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-go-uber-org-zap" ,go-go-uber-org-zap)
;;         ("go-go-opencensus-io" ,go-go-opencensus-io)
;;         ("go-go-etcd-io-etcd-client-v3" ,go-go-etcd-io-etcd-client-v3)
;;         ("go-go-etcd-io-etcd-client-v2" ,go-go-etcd-io-etcd-client-v2)
;;         ("go-go-etcd-io-etcd-client-pkg-v3" ,go-go-etcd-io-etcd-client-pkg-v3)
;;         ("go-github-com-streadway-handy" ,go-github-com-streadway-handy)
;;         ("go-github-com-streadway-amqp" ,go-github-com-streadway-amqp)
;;         ("go-github-com-sony-gobreaker" ,go-github-com-sony-gobreaker)
;;         ("go-github-com-sirupsen-logrus" ,go-github-com-sirupsen-logrus)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-performancecopilot-speed-v4"
;;          ,go-github-com-performancecopilot-speed-v4)
;;         ("go-github-com-openzipkin-zipkin-go"
;;          ,go-github-com-openzipkin-zipkin-go)
;;         ("go-github-com-opentracing-opentracing-go"
;;          ,go-github-com-opentracing-opentracing-go)
;;         ("go-github-com-nats-io-nats-go" ,go-github-com-nats-io-nats-go)
;;         ("go-github-com-nats-io-nats-server-v2"
;;          ,go-github-com-nats-io-nats-server-v2)
;;         ("go-github-com-influxdata-influxdb1-client"
;;          ,go-github-com-influxdata-influxdb1-client)
;;         ("go-github-com-hudl-fargo" ,go-github-com-hudl-fargo)
;;         ("go-github-com-hashicorp-consul-api"
;;          ,go-github-com-hashicorp-consul-api)
;;         ("go-github-com-golang-jwt-jwt-v4" ,go-github-com-golang-jwt-jwt-v4)
;;         ("go-github-com-go-zookeeper-zk" ,go-github-com-go-zookeeper-zk)
;;         ("go-github-com-go-kit-log" ,go-github-com-go-kit-log)
;;         ("go-github-com-casbin-casbin-v2" ,go-github-com-casbin-casbin-v2)
;;         ("go-github-com-aws-aws-sdk-go-v2-service-cloudwatch"
;;          ,go-github-com-aws-aws-sdk-go-v2-service-cloudwatch)
;;         ("go-github-com-aws-aws-sdk-go-v2" ,go-github-com-aws-aws-sdk-go-v2)
;;         ("go-github-com-aws-aws-sdk-go" ,go-github-com-aws-aws-sdk-go)
;;         ("go-github-com-afex-hystrix-go" ,go-github-com-afex-hystrix-go)
;;         ("go-github-com-vividcortex-gohistogram"
;;          ,go-github-com-vividcortex-gohistogram)))
;;     (home-page "https://github.com/go-kit/kit")
;;     (synopsis "Go kit")
;;     (description
;;       "Go kit is a programming toolkit for building microservices
;;        (or elegant monoliths) in Go.  We solve common problems in distributed
;;        systems and application architecture so you can focus on delivering
;;        business value.")
;;     (license license:expat)))

;; (define-public go-github-com-oklog-ulid
;;   (package
;;     (name "go-github-com-oklog-ulid")
;;     (version "1.3.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/oklog/ulid")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0hybwyid820n80axrk863k2py93hbqlq6hxhf84ppmz0qd0ys0gq"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/oklog/ulid"))
;;     (home-page "https://github.com/oklog/ulid")
;;     (synopsis "Universally Unique Lexicographically Sortable Identifier")
;;     (description
;;       "This package provides a Go port of alizain/ulid with binary format implemented.")
;;     (license license:asl2.0)))

;; (define-public go-gopkg-in-alecthomas-kingpin-v2
;;   (package
;;     (name "go-gopkg-in-alecthomas-kingpin-v2")
;;     (version "2.2.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/alecthomas/kingpin.v2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0mndnv3hdngr3bxp7yxfd47cas4prv98sqw534mx7vp38gd88n5r"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/alecthomas/kingpin.v2"
;;         #:unpack-path
;;         "gopkg.in/alecthomas/kingpin.v2"))
;;     (home-page "https://gopkg.in/alecthomas/kingpin.v2")
;;     (synopsis "Kingpin - A Go (golang) command line and flag parser")
;;     (description
;;       "Kingpin is a fluent-style, type-safe command-line parser. It supports flags, 
;;        nested commands, and positional arguments.")
;;     (license license:expat)))

;; (define-public go-github-com-prometheus-tsdb
;;   (package
;;     (name "go-github-com-prometheus-tsdb")
;;     (version "0.10.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/prometheus-junkyard/tsdb")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1wkx1nj2z9s3wxc5w4m9a319nnqr92bmflzwf7kppx0pivajy474"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/prometheus/tsdb"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-alecthomas-kingpin-v2"
;;          ,go-gopkg-in-alecthomas-kingpin-v2)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-github-com-prometheus-client-golang"
;;          ,go-github-com-prometheus-client-golang)
;;         ("go-github-com-pkg-errors" ,go-github-com-pkg-errors)
;;         ("go-github-com-oklog-ulid" ,go-github-com-oklog-ulid)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-go-kit-kit" ,go-github-com-go-kit-kit)
;;         ("go-github-com-dgryski-go-sip13" ,go-github-com-dgryski-go-sip13)
;;         ("go-github-com-cespare-xxhash" ,go-github-com-cespare-xxhash)))
;;     (home-page "https://github.com/prometheus/tsdb")
;;     (synopsis "TSDB")
;;     (description
;;       "Package tsdb implements a time series storage for float64 sample data.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-rjeczalik-notify
;;   (package
;;     (name "go-github-com-rjeczalik-notify")
;;     (version "0.9.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rjeczalik/notify")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0pq191pvd4icp84sg0513pf5v7xm4nmldaagjd4p8ws75l656grw"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rjeczalik/notify"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/rjeczalik/notify")
;;     (synopsis "notify")
;;     (description "Package notify implements access to filesystem events.")
;;     (license license:expat)))

;; (define-public go-github-com-gin-contrib-sse
;;   (package
;;     (name "go-github-com-gin-contrib-sse")
;;     (version "0.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gin-contrib/sse")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "072nq91a65n5xvwslqjyvydfd0mfpnvb3vwjyfvmzm1ym96wr1nd"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gin-contrib/sse"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)))
;;     (home-page "https://github.com/gin-contrib/sse")
;;     (synopsis "Server-Sent Events")
;;     (description
;;       "Server-sent events (SSE) is a technology where a browser receives automatic
;;        updates from a server via HTTP connection.  The Server-Sent Events EventSource API 
;;        is standardized as part of HTML5 by the W3C.")
;;     (license license:expat)))

;; (define-public go-github-com-go-playground-assert-v2
;;   (package
;;     (name "go-github-com-go-playground-assert-v2")
;;     (version "2.0.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-playground/assert")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1cl9c4s405zddzrj36hhs0a18g02zscdl46fyipp6k91mhvai8wz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-playground/assert/v2"))
;;     (home-page "https://github.com/go-playground/assert")
;;     (synopsis "Package assert")
;;     (description
;;       "Package assert provides some basic assertion functions for testing and
;;        also provides the building blocks for creating your own more complex
;;        validations.")
;;     (license license:expat)))

;; (define-public go-github-com-go-playground-validator-v10
;;   (package
;;     (name "go-github-com-go-playground-validator-v10")
;;     (version "10.9.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/go-playground/validator")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "06qgmksqsfsdc2w1zbf5rdll82irdnf3ii83l138ba5fwbw46csk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/go-playground/validator/v10"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v3" ,go-gopkg-in-yaml-v3)
;;         ("go-gopkg-in-check-v1" ,go-gopkg-in-check-v1)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-rogpeppe-go-internal"
;;          ,go-github-com-rogpeppe-go-internal)
;;         ("go-github-com-leodido-go-urn" ,go-github-com-leodido-go-urn)
;;         ("go-github-com-kr-pretty" ,go-github-com-kr-pretty)
;;         ("go-github-com-go-playground-universal-translator"
;;          ,go-github-com-go-playground-universal-translator)
;;         ("go-github-com-go-playground-locales"
;;          ,go-github-com-go-playground-locales)
;;         ("go-github-com-go-playground-assert-v2"
;;          ,go-github-com-go-playground-assert-v2)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/go-playground/validator")
;;     (synopsis "Package validator")
;;     (description
;;       "Package validator implements value validations for structs and individual fields
;;        based on tags.")
;;     (license license:expat)))

;; (define-public go-github-com-google-go-cmp
;;   (package
;;     (name "go-github-com-google-go-cmp")
;;     (version "0.5.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/google/go-cmp")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0lrb0pacv5iy3m6fn1qb3nv7zwimfhpzqq8f6hwpwx88cx3g6p1s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/google/go-cmp"))
;;     (propagated-inputs `(("go-golang-org-x-xerrors" ,go-golang-org-x-xerrors)))
;;     (home-page "https://github.com/google/go-cmp")
;;     (synopsis "Package for equality of Go values")
;;     (description
;;       "This package is intended to be a more powerful and safer alternative to
;;        reflect.DeepEqual for comparing whether two values are semantically equal.")
;;     (license license:bsd-3)))

;; (define-public go-google-golang-org-protobuf
;;   (package
;;     (name "go-google-golang-org-protobuf")
;;     (version "1.27.1")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://go.googlesource.com/protobuf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0aszb7cv8fq1m8akgd4kjyg5q7g5z9fdqnry6057ygq9r8r2yif2"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "google.golang.org/protobuf"))
;;     (propagated-inputs
;;       `(("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)))
;;     (home-page "https://google.golang.org/protobuf")
;;     (synopsis "Go support for Protocol Buffers")
;;     (description
;;       "This project hosts the Go implementation for protocol buffers, which is a
;;        language-neutral, platform-neutral, extensible mechanism for serializing
;;        structured data.  The protocol buffer language is a language for specifying the
;;        schema for structured data.  This schema is compiled into language specific
;;        bindings.  This project provides both a tool to generate Go code for the
;;        protocol buffer language, and also the runtime implementation to handle
;;        serialization of messages in Go.  See the protocol buffer developer guide
;;        for more information about protocol buffers themselves.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-golang-protobuf
;;   (package
;;     (name "go-github-com-golang-protobuf")
;;     (version "1.5.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/golang/protobuf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1mh5fyim42dn821nsd3afnmgscrzzhn3h8rag635d2jnr23r1zhk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/golang/protobuf"))
;;     (propagated-inputs
;;       `(("go-google-golang-org-protobuf" ,go-google-golang-org-protobuf)
;;         ("go-github-com-google-go-cmp" ,go-github-com-google-go-cmp)))
;;     (home-page "https://github.com/golang/protobuf")
;;     (synopsis "Go support for Protocol Buffers")
;;     (description
;;       "This module (code github.com/golang/protobuf)
;;        contains Go bindings for protocol buffers.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-modern-go-concurrent
;;   (package
;;     (name "go-github-com-modern-go-concurrent")
;;     (version "0.0.0-20180306012644-bacd9c7ef1dd")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/modern-go/concurrent")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0s0fxccsyb8icjmiym5k7prcqx36hvgdwl588y0491gi18k5i4zs"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/modern-go/concurrent"))
;;     (home-page "https://github.com/modern-go/concurrent")
;;     (synopsis "concurrent")
;;     (description
;;       "because sync.Map is only available in go 1.9, we can use concurrent.Map to make code portable")
;;     (license license:asl2.0)))

;; (define-public go-github-com-modern-go-reflect2
;;   (package
;;     (name "go-github-com-modern-go-reflect2")
;;     (version "1.0.2")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/modern-go/reflect2")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "05a89f9j4nj8v1bchfkv2sy8piz746ikj831ilbp54g8dqhl8vzr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/modern-go/reflect2"))
;;     (home-page "https://github.com/modern-go/reflect2")
;;     (synopsis "reflect2")
;;     (description "reflect api that avoids runtime reflect.Value cost")
;;     (license license:asl2.0)))

;; (define-public go-github-com-json-iterator-go
;;   (package
;;     (name "go-github-com-json-iterator-go")
;;     (version "1.1.12")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/json-iterator/go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1c8f0hxm18wivx31bs615x3vxs2j3ba0v6vxchsjhldc8kl311bz"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/json-iterator/go"))
;;     (propagated-inputs
;;       `(("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-modern-go-reflect2" ,go-github-com-modern-go-reflect2)
;;         ("go-github-com-modern-go-concurrent"
;;          ,go-github-com-modern-go-concurrent)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)))
;;     (home-page "https://github.com/json-iterator/go")
;;     (synopsis "Benchmark")
;;     (description
;;       "Package jsoniter implements encoding and decoding of JSON as defined in
;;        RFC 4627 and provides interfaces with identical syntax of standard lib encoding/json.
;;        Converting from encoding/json to jsoniter is no more than replacing the package with jsoniter
;;        and variable type declarations (if any).  jsoniter interfaces gives 100% compatibility
;;        with code using standard lib.")
;;     (license license:expat)))

;; (define-public go-github-com-ugorji-go
;;   (package
;;     (name "go-github-com-ugorji-go")
;;     (version "1.2.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ugorji/go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nwqx41f82r9rmdhzi01bgvwpsa7jgcl3s6n3r7q3hq48kw13g67"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ugorji/go"))
;;     (propagated-inputs
;;       `(("go-github-com-ugorji-go-codec" ,go-github-com-ugorji-go-codec)))
;;     (home-page "https://github.com/ugorji/go")
;;     (synopsis "go-codec")
;;     (description
;;       "This repository contains the go-codec library, the codecgen tool and
;;        benchmarks for comparing against other libraries.")
;;     (license license:expat)))

;; (define-public go-github-com-ugorji-go-codec
;;   (package
;;     (name "go-github-com-ugorji-go-codec")
;;     (version "1.2.6")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ugorji/go")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0nwqx41f82r9rmdhzi01bgvwpsa7jgcl3s6n3r7q3hq48kw13g67"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "github.com/ugorji/go/codec"
;;         #:unpack-path
;;         "github.com/ugorji/go"))
;;     (propagated-inputs `(("go-github-com-ugorji-go" ,go-github-com-ugorji-go)))
;;     (home-page "https://github.com/ugorji/go")
;;     (synopsis "Package Documentation for github.com/ugorji/go/codec")
;;     (description
;;       "Package codec provides a High Performance, Feature-Rich Idiomatic Go 1.4+ codec/encoding library
;;        for binc, msgpack, cbor, json.")
;;     (license license:expat)))

;; (define-public go-github-com-gin-gonic-gin
;;   (package
;;     (name "go-github-com-gin-gonic-gin")
;;     (version "1.7.4")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gin-gonic/gin")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "11ykj4lc6pkp01fg2rwfawaycvhpr2wqnr9qp1wswiyig73kkdmi"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/gin-gonic/gin"))
;;     (propagated-inputs
;;       `(("go-gopkg-in-yaml-v2" ,go-gopkg-in-yaml-v2)
;;         ("go-github-com-ugorji-go-codec" ,go-github-com-ugorji-go-codec)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-json-iterator-go" ,go-github-com-json-iterator-go)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-go-playground-validator-v10"
;;          ,go-github-com-go-playground-validator-v10)
;;         ("go-github-com-gin-contrib-sse" ,go-github-com-gin-contrib-sse)))
;;     (home-page "https://github.com/gin-gonic/gin")
;;     (synopsis "Gin Web Framework")
;;     (description "Package gin implements a HTTP web framework called gin.")
;;     (license license:expat)))

;; (define-public go-github-com-rs-cors
;;   (package
;;     (name "go-github-com-rs-cors")
;;     (version "1.8.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/rs/cors")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "07nf0lai4m5m61j6kscynqcwpj28df13g79rrdmk0g3ba3cbf9gr"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/rs/cors"))
;;     (propagated-inputs
;;       `(("go-github-com-gin-gonic-gin" ,go-github-com-gin-gonic-gin)))
;;     (home-page "https://github.com/rs/cors")
;;     (synopsis "Go CORS handler")
;;     (description
;;       "Package cors is net/http handler to handle CORS related requests
;;        as defined by http://www.w3.org/TR/cors/")
;;     (license license:expat)))

;; (define-public go-github-com-status-im-keycard-go
;;   (package
;;     (name "go-github-com-status-im-keycard-go")
;;     (version "0.0.0-20211007131014-b3978ba45837")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/status-im/keycard-go")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0h4zizz27gm12z7hsqvwl87mqabfv9za49kamhl8mv8r4day3czc"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/status-im/keycard-go"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-ethereum-go-ethereum"
;;          ,go-github-com-ethereum-go-ethereum)))
;;     (home-page "https://github.com/status-im/keycard-go")
;;     (synopsis "keycard-go")
;;     (description
;;       "keycard-go is a set of Go packages built to interact with the Status Keycard.")
;;     (license license:mpl2.0)))

;; (define-public go-github-com-tklauser-numcpus
;;   (package
;;     (name "go-github-com-tklauser-numcpus")
;;     (version "0.3.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/tklauser/numcpus")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0yagrw8zg1zq06r2lpc806g9qccwldi6x95ljlzfbpvkz4z6k95c"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tklauser/numcpus"))
;;     (propagated-inputs `(("go-golang-org-x-sys" ,go-golang-org-x-sys)))
;;     (home-page "https://github.com/tklauser/numcpus")
;;     (synopsis "numcpus")
;;     (description
;;       "Package numcpus provides information about the number of CPU.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-tklauser-go-sysconf
;;   (package
;;     (name "go-github-com-tklauser-go-sysconf")
;;     (version "0.3.9")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/tklauser/go-sysconf")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0bihbgnrgprpb208mi1xxrb3mrwhjyy2s7zqq8jnzh2sgzpc76w5"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tklauser/go-sysconf"))
;;     (propagated-inputs
;;       `(("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-github-com-tklauser-numcpus" ,go-github-com-tklauser-numcpus)))
;;     (home-page "https://github.com/tklauser/go-sysconf")
;;     (synopsis "go-sysconf")
;;     (description
;;       "Package sysconf implements the sysconf(3) function and provides the
;;        associated SC_* constants to query system configuration values.")
;;     (license license:bsd-3)))

;; (define-public go-github-com-tyler-smith-go-bip39
;;   (package
;;     (name "go-github-com-tyler-smith-go-bip39")
;;     (version "1.1.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/tyler-smith/go-bip39")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0daadv14696l9zq5nny1wbg4c5m6lsmw5kdvkfqb2i5hsh35d26x"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/tyler-smith/go-bip39"))
;;     (propagated-inputs `(("go-golang-org-x-crypto" ,go-golang-org-x-crypto)))
;;     (home-page "https://github.com/tyler-smith/go-bip39")
;;     (synopsis "go-bip39")
;;     (description
;;       "Package bip39 is the Golang implementation of the BIP39 spec.")
;;     (license license:expat)))

;; (define-public go-gopkg-in-natefinch-npipe-v2
;;   (package
;;     (name "go-gopkg-in-natefinch-npipe-v2")
;;     (version "2.0.0-20160621034901-c1b8fa8bdcce")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/natefinch/npipe.v2")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1qplrvhks05pay169d9lph3hl7apdam4vj1kx3yzik7cphx6b24f"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/natefinch/npipe.v2"
;;         #:unpack-path
;;         "gopkg.in/natefinch/npipe.v2"))
;;     (home-page "https://gopkg.in/natefinch/npipe.v2")
;;     (synopsis "npipe")
;;     (description
;;       "Package npipe provides a pure Go wrapper around Windows named pipes.")
;;     (license license:expat)))

;; (define-public go-gopkg-in-olebedev-go-duktape-v3
;;   (package
;;     (name "go-gopkg-in-olebedev-go-duktape-v3")
;;     (version "3.0.0-20210326210528-650f7c854440")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/olebedev/go-duktape.v3")
;;                (commit (go-version->git-ref version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ydqmw6mp2bcp21g4ivmpb001w229nbxyh1kf9jcw49xn4f55z4g"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/olebedev/go-duktape.v3"
;;         #:unpack-path
;;         "gopkg.in/olebedev/go-duktape.v3"))
;;     (home-page "https://gopkg.in/olebedev/go-duktape.v3")
;;     (synopsis "Duktape bindings for Go(Golang)")
;;     (description
;;       "Duktape is a thin, embeddable javascript engine. Most of the api is implemented.")
;;     (license license:expat)))

;; (define-public go-gopkg-in-urfave-cli-v1
;;   (package
;;     (name "go-gopkg-in-urfave-cli-v1")
;;     (version "1.20.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://gopkg.in/urfave/cli.v1")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0y6f4sbzkiiwrxbl15biivj8c7qwxnvm3zl2dd3mw4wzg4x10ygj"))))
;;     (build-system go-build-system)
;;     (arguments
;;       '(#:import-path
;;         "gopkg.in/urfave/cli.v1"
;;         #:unpack-path
;;         "gopkg.in/urfave/cli.v1"))
;;     (home-page "https://gopkg.in/urfave/cli.v1")
;;     (synopsis "cli")
;;     (description
;;       "Package cli provides a minimal framework for creating and organizing command line
;;        Go applications.")
;;     (license license:expat)))

;; (define-public go-gotest-tools
;;   (package
;;     (name "go-gotest-tools")
;;     (version "1.4.0")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/gotestyourself/gotest.tools")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "0ykgj2rpi3yha9rd23abx2885rm72jarhpgw1hkasmrb9i7j6nqk"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "gotest.tools"))
;;     (home-page "https://gotest.tools")
;;     (synopsis "gotest.tools")
;;     (description
;;       "Package gotesttools is a collection of packages to augment `testing` and
;;        support common patterns.")
;;     (license license:asl2.0)))

;; (define-public go-github-com-ethereum-go-ethereum
;;   (package
;;     (name "go-github-com-ethereum-go-ethereum")
;;     (version "1.10.10")
;;     (source
;;       (origin
;;         (method git-fetch)
;;         (uri (git-reference
;;                (url "https://github.com/ethereum/go-ethereum")
;;                (commit (string-append "v" version))))
;;         (file-name (git-file-name name version))
;;         (sha256
;;           (base32 "1nbli012bapw7bz6113wqaq8sx86hgnmy3v6ka0b1f26hq3p9p0s"))))
;;     (build-system go-build-system)
;;     (arguments '(#:import-path "github.com/ethereum/go-ethereum"))
;;     (propagated-inputs
;;       `(("go-gotest-tools" ,go-gotest-tools)
;;         ("go-gopkg-in-urfave-cli-v1" ,go-gopkg-in-urfave-cli-v1)
;;         ("go-gopkg-in-olebedev-go-duktape-v3"
;;          ,go-gopkg-in-olebedev-go-duktape-v3)
;;         ("go-gopkg-in-natefinch-npipe-v2" ,go-gopkg-in-natefinch-npipe-v2)
;;         ("go-golang-org-x-time" ,go-golang-org-x-time)
;;         ("go-golang-org-x-text" ,go-golang-org-x-text)
;;         ("go-golang-org-x-sys" ,go-golang-org-x-sys)
;;         ("go-golang-org-x-sync" ,go-golang-org-x-sync)
;;         ("go-golang-org-x-net" ,go-golang-org-x-net)
;;         ("go-golang-org-x-crypto" ,go-golang-org-x-crypto)
;;         ("go-github-com-tyler-smith-go-bip39"
;;          ,go-github-com-tyler-smith-go-bip39)
;;         ("go-github-com-tklauser-go-sysconf"
;;          ,go-github-com-tklauser-go-sysconf)
;;         ("go-github-com-syndtr-goleveldb" ,go-github-com-syndtr-goleveldb)
;;         ("go-github-com-stretchr-testify" ,go-github-com-stretchr-testify)
;;         ("go-github-com-status-im-keycard-go"
;;          ,go-github-com-status-im-keycard-go)
;;         ("go-github-com-shirou-gopsutil" ,go-github-com-shirou-gopsutil)
;;         ("go-github-com-rs-cors" ,go-github-com-rs-cors)
;;         ("go-github-com-rjeczalik-notify" ,go-github-com-rjeczalik-notify)
;;         ("go-github-com-prometheus-tsdb" ,go-github-com-prometheus-tsdb)
;;         ("go-github-com-peterh-liner" ,go-github-com-peterh-liner)
;;         ("go-github-com-olekukonko-tablewriter"
;;          ,go-github-com-olekukonko-tablewriter)
;;         ("go-github-com-naoina-toml" ,go-github-com-naoina-toml)
;;         ("go-github-com-naoina-go-stringutil"
;;          ,go-github-com-naoina-go-stringutil)
;;         ("go-github-com-mattn-go-isatty" ,go-github-com-mattn-go-isatty)
;;         ("go-github-com-mattn-go-colorable" ,go-github-com-mattn-go-colorable)
;;         ("go-github-com-kylelemons-godebug" ,go-github-com-kylelemons-godebug)
;;         ("go-github-com-karalabe-usb" ,go-github-com-karalabe-usb)
;;         ("go-github-com-julienschmidt-httprouter"
;;          ,go-github-com-julienschmidt-httprouter)
;;         ("go-github-com-jedisct1-go-minisign"
;;          ,go-github-com-jedisct1-go-minisign)
;;         ("go-github-com-jackpal-go-nat-pmp" ,go-github-com-jackpal-go-nat-pmp)
;;         ("go-github-com-influxdata-line-protocol"
;;          ,go-github-com-influxdata-line-protocol)
;;         ("go-github-com-influxdata-influxdb-client-go-v2"
;;          ,go-github-com-influxdata-influxdb-client-go-v2)
;;         ("go-github-com-influxdata-influxdb"
;;          ,go-github-com-influxdata-influxdb)
;;         ("go-github-com-huin-goupnp" ,go-github-com-huin-goupnp)
;;         ("go-github-com-holiman-uint256" ,go-github-com-holiman-uint256)
;;         ("go-github-com-holiman-bloomfilter-v2"
;;          ,go-github-com-holiman-bloomfilter-v2)
;;         ("go-github-com-hashicorp-golang-lru"
;;          ,go-github-com-hashicorp-golang-lru)
;;         ("go-github-com-hashicorp-go-bexpr" ,go-github-com-hashicorp-go-bexpr)
;;         ("go-github-com-graph-gophers-graphql-go"
;;          ,go-github-com-graph-gophers-graphql-go)
;;         ("go-github-com-gorilla-websocket" ,go-github-com-gorilla-websocket)
;;         ("go-github-com-google-uuid" ,go-github-com-google-uuid)
;;         ("go-github-com-google-gofuzz" ,go-github-com-google-gofuzz)
;;         ("go-github-com-golang-snappy" ,go-github-com-golang-snappy)
;;         ("go-github-com-golang-protobuf" ,go-github-com-golang-protobuf)
;;         ("go-github-com-go-stack-stack" ,go-github-com-go-stack-stack)
;;         ("go-github-com-go-ole-go-ole" ,go-github-com-go-ole-go-ole)
;;         ("go-github-com-gballet-go-libpcsclite"
;;          ,go-github-com-gballet-go-libpcsclite)
;;         ("go-github-com-fjl-memsize" ,go-github-com-fjl-memsize)
;;         ("go-github-com-fatih-color" ,go-github-com-fatih-color)
;;         ("go-github-com-edsrzf-mmap-go" ,go-github-com-edsrzf-mmap-go)
;;         ("go-github-com-dop251-goja" ,go-github-com-dop251-goja)
;;         ("go-github-com-docker-docker" ,go-github-com-docker-docker)
;;         ("go-github-com-deepmap-oapi-codegen"
;;          ,go-github-com-deepmap-oapi-codegen)
;;         ("go-github-com-deckarep-golang-set"
;;          ,go-github-com-deckarep-golang-set)
;;         ("go-github-com-davecgh-go-spew" ,go-github-com-davecgh-go-spew)
;;         ("go-github-com-consensys-gnark-crypto"
;;          ,go-github-com-consensys-gnark-crypto)
;;         ("go-github-com-cloudflare-cloudflare-go"
;;          ,go-github-com-cloudflare-cloudflare-go)
;;         ("go-github-com-cespare-cp" ,go-github-com-cespare-cp)
;;         ("go-github-com-btcsuite-btcd" ,go-github-com-btcsuite-btcd)
;;         ("go-github-com-aws-aws-sdk-go-v2-service-route53"
;;          ,go-github-com-aws-aws-sdk-go-v2-service-route53)
;;         ("go-github-com-aws-aws-sdk-go-v2-credentials"
;;          ,go-github-com-aws-aws-sdk-go-v2-credentials)
;;         ("go-github-com-aws-aws-sdk-go-v2-config"
;;          ,go-github-com-aws-aws-sdk-go-v2-config)
;;         ("go-github-com-aws-aws-sdk-go-v2" ,go-github-com-aws-aws-sdk-go-v2)
;;         ("go-github-com-victoriametrics-fastcache"
;;          ,go-github-com-victoriametrics-fastcache)
;;         ("go-github-com-stackexchange-wmi" ,go-github-com-stackexchange-wmi)
;;         ("go-github-com-azure-go-autorest-autorest-adal"
;;          ,go-github-com-azure-go-autorest-autorest-adal)
;;         ("go-github-com-azure-azure-storage-blob-go"
;;          ,go-github-com-azure-azure-storage-blob-go)
;;         ("go-github-com-azure-azure-pipeline-go"
;;          ,go-github-com-azure-azure-pipeline-go)))
;;     (home-page "https://github.com/ethereum/go-ethereum")
;;     (synopsis "Go Ethereum")
;;     (description
;;       "Package ethereum defines interfaces for interacting with Ethereum.")
;;     (license license:gpl3)))

