language: c
install: bash -e .travis-ci-install.sh
script: bash -e .travis-ci.sh
cache: apt
dist: trusty
sudo: required
matrix:
  include:
  - os: linux
    env: OCAML_VERSION=4.05 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=4.04 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=4.03 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=4.02 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=4.01 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=4.00 OPAM_VERSION=1.2.2
  - os: linux
    env: OCAML_VERSION=3.12 OPAM_VERSION=1.2.2
  - os: osx
    osx_image: xcode7.3
    env: OCAML_VERSION=4.03 OPAM_VERSION=1.2.2