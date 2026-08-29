#!/usr/bin/env bash

set -euo pipefail

git pull --recurse-submodules

git submodule update --init --recursive --merge
