#!/usr/bin/env bash

set -euo pipefail

pushd nvim/.config/nvim

if ! git diff --quiet || ! git diff --staged --quiet; then
  git commit -am "Update plugins"
  git push
fi

popd

git add nvim
if ! git diff --staged --quiet; then
  git commit -m "Update nvim"
  git push
fi
