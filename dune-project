(lang dune 2.5)
(using mdx 0.1)

(name sklogs-cli)

(license Apache-2.0)
(maintainers "Hezekiah M. Carty <hezekiah.carty@elastic.co>")
(authors "Hezekiah M. Carty <hezekiah.carty@elastic.co>")

(source (github skolemlabs/sklogs))

(generate_opam_files true)

(version 1.0.1)

(package
 (name ecs)
 (synopsis "Elastic Common Scheme (ECS) field library")
 (depends
  (ocaml (>= 4.08.0))
  (dune (>= 2.5.0))
  (fmt (>= 0.8.8))
  (logs (>= 0.7.0))
  (mdx (and :with-test (>= 1.6.0)))
  (ppx_deriving (>= 4.5))
  (ptime (>= 0.8.5))
  (uri (>= 3.0.0))
  (yojson (>= 1.6.0))))

(package
 (name ecs-apm)
 (synopsis "Helper library for APM integration with ECS")
 (depends
  skapm
  (ocaml (>= 4.08.0))
  (ecs (= :version))
  (dune (>= 2.5.0))
  (fmt (>= 0.8.8))
  (logs (>= 0.7.0))
  (mdx (and :with-test (>= 1.6.0)))
  (ppx_deriving (>= 4.5))
  (ptime (>= 0.8.5))
  (uri (>= 3.0.0))
  (yojson (>= 1.6.0))))

(package
 (name sklogs-cli)
 (synopsis "Simple, line-based and ECS-ready JSON Logs configuration")
 (depends
  (ocaml (>= 4.08.0))
  (ecs (= :version))
  (dune (>= 2.5.0))
  (cmdliner (>= 1.0.4))
  (fmt (>= 0.8.8))
  (logs (>= 0.7.0))
  (mdx (and :with-test (>= 1.6.0)))
  (ptime (>= 0.8.5))
  (uri (>= 3.0.0))
  (yojson (>= 1.6.0))))

(package
 (name sklogs-cli-lwt)
 (synopsis "Simple, line-based and ECS-ready JSON Logs configuration")
 (depends
  (ocaml (>= 4.08.0))
  (sklogs-cli (= :version))
  (dune (>= 2.5.0))
  (cmdliner (>= 1.0.4))
  (fmt (>= 0.8.8))
  (logs (>= 0.7.0))
  (lwt (>= 4.0.0))
  (mdx (and :with-test (>= 1.6.0)))
  (ptime (>= 0.8.5))
  (yojson (>= 1.6.0))))
