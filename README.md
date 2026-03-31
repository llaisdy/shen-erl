# shen-erl

Erlang port of the [Shen programming language](https://shenlanguage.org/).

Tested with:

- erlang 27.3 and 28.3
- [Shen OS Kernel 40.1](https://github.com/Shen-Language/shen-sources/releases/tag/shen-40.1)

## Building

For creating the `shen-erl` executable you first need to have a recent version of Erlang (the makefile builds a docker image with erlang27.3, I've been working with 28.3), with the `erl` binary accessible.

Then just run `make`.

nb: `make clean` will delete compiled files, `make distclean` will also delete downloaded and other generated files.

### A note on the build system (erlang.mk not rebar3)

The build has some custom steps that are naturally expressed as Makefile rules:

- leex/yecc generation for the lexer/parser
- C wrapper compilation
- Running the partially-built binary to compile `.kl` files into `.beam` files

rebar3 hooks can do custom steps but with more ceremony; make handles these
natively. Also, shen-erl is an executable/runtime, not a library, so Hex
integration is not relevant.

## Testing

All erlang tests should pass.  All 134 Shen conformance tests should pass.

There are several make targets to run tests:

### Erlang tests

Run common_test suites locally:

```
make ct
```

Some tests are run through Docker:

```
make docker-test

# run dialyzer tests in docker
make docker-dialyze
```

### Shen tests

```
make shen-tests
```

## Running

For instructions on how to use the shen-erl command, run

```
SHEN_ERL_ROOTDIR=. ./bin/shen-erl --help
```

where `SHEN_ERL_ROOTDIR` is the directory where the `ebin` directory is found.

## Installation

TODO:

- `make install` to install locally
- `make docker` to install into a docker container
