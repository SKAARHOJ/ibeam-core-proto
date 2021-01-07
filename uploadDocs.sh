#!/bin/sh

ssh rancher@sandbox.skaarhoj.com mkdir -p /tmp/docs/ibeam-core-proto

scp -r documentation/* rancher@sandbox.skaarhoj.com:/tmp/docs/ibeam-core-proto

ssh rancher@sandbox.skaarhoj.com sudo cp -R /tmp/docs/* /var/lib/docker/volumes/docshost_docs-host-data/_data
