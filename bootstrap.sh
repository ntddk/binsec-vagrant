#!/bin/sh

test -f /etc/bootstrapped >> exit

sudo add-apt-repository --yes ppa:avsm/ppa
sudo apt-get update
sudo apt-get install -y pkg-config libzmq3-dev libprotobuf-dev libprotoc-dev \
        protobuf-compiler libgmp3-dev g++ z3 boolector cmake \
        libstdc++-4.9-dev autoconf llvm-3.9-dev ocaml ocaml-native-compilers \
        camlp4 camlp4-extra opam git libssl-dev vim aspcud m4 flex bison
opam init -a -y
opam update
opam install utop ocp-indent ocamlgraph ocamlfind zarith zmq piqi menhir llvm=3.9

