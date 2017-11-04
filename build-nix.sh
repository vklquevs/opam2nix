#!/usr/bin/env bash
set -eu
nix-shell -p gup bash --run "gup local"
