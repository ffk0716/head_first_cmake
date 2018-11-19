#!/bin/bash
set -eux
git clean -ffdx
cmake .
cmake .
