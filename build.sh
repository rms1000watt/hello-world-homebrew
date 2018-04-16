#!/usr/bin/env bash

appName=hello-world-homebrew

rm -rf bin &> /dev/null
mkdir bin &> /dev/null

echo "Building Darwin"
GOOS=darwin  GOARCH=amd64 go build -o "bin/$appName-darwin-amd64"
shasum -a 256 < "bin/$appName-darwin-amd64"
echo "Building Linux"
GOOS=linux   GOARCH=amd64 go build -o "bin/$appName-linux-amd64"
echo "Building Windows"
GOOS=windows GOARCH=amd64 go build -o "bin/$appName-windows-amd64.exe"
