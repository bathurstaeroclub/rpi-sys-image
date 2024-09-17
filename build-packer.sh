#!/usr/bin/env bash

set -e
set -x

PACKER_VERSION="$1"

echo "Building github.com/michalfita/packer-plugin-cross"
# Version tracked in go.mod + tools.go
go build -v -o packer-plugin-cross github.com/michalfita/packer-plugin-cross
packer plugins install -path packer-plugin-cross github.com/michalfita/cross 
echo "Finished building github.com/michalfita/packer-plugin-cross"
