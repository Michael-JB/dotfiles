#!/usr/bin/env bash

set -euo pipefail

# Pull changes
git pull --recurse-submodules

# Update submodule; stay on current branch
git submodule update --remote --merge --recursive

