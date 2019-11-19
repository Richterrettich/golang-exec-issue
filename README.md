## Usage

This problem is present on centos 7.x machines. Use `make test-incorrect-behaviour` to reproduce this issue in various docker containers.
You can run `make test-correct-behaviour` in order to verify that it works on fedora, centos 8 and ubuntu (also docker-containers).
In order to sort out any issues with the command in question, there is a set of utility programs written in other languages located in the verification directory.
Use `make test-verification` to see that other languages have the expected behaviour.

The command in question is `script -q -e -c false /dev/null`.