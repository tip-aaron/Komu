#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$SCRIPT_DIR/.."

pushd "$ROOT_DIR"
"$ROOT_DIR/Vendor/Binaries/Premake/Linux/premake5" --cc=clang --file=Build.lua gmake
popd

