#!/usr/bin/env bash

set -euo pipefail

pushd nvim/.config/nvim

git commit -am "Update plugins"

popd

git add nvim
git commit -m "Update nvim"
git push
