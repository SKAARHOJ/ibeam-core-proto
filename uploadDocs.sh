#!/bin/sh

rsync -aP -e "ssh -p 50022" documentation/* root@localhost:/app/data/ibeam-core-proto
