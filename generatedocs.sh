#!/bin/bash

export PATH="$PATH:$(go env GOPATH)/bin"
DIR="documentation"

echo "Download/Update protoc-gen-doc..."
go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc &> /dev/null
go mod tidy

echo "Create output directory..."
if [ -d "$DIR" ]; then
  rm -rf $DIR
fi
mkdir $DIR

echo "Generate documentation..."
protoc --doc_out=./$DIR --doc_opt=template.tmpl,index.html ibeam-core.proto
echo "...finished 🏁"
