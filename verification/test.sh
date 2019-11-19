#!/bin/bash
echo "testing bash"
echo "testing script -q -e -c false /dev/null"
script -q -e -c false /dev/null
echo "exit code was $?"