#!/bin/bash

# Extract version from manifest.json
VERSION=$(grep '"version":' manifest.json | cut -d'"' -f4)

if [ -z "$VERSION" ]; then
  echo "Error: Could not find version in manifest.json"
  exit 1
fi

XPI_NAME="zotero-doi-manager-$VERSION.xpi"

echo "Building $XPI_NAME..."

# Remove existing xpi
rm -f "$XPI_NAME"

# Zip the files
zip -r "$XPI_NAME" content locale skin bootstrap.js manifest.json prefs.js zoteroshortdoi.js

echo "Build complete: $XPI_NAME"
