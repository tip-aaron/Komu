#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR/.."

pushd "$ROOT_DIR"
git ls-files '*.cpp' '*.h' '*.hpp' '*.c' '*.cxx' | grep -vE '^(External|Binaries)/' | xargs clang-format -i
popd
