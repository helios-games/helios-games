#!/bin/sh
set -eux

git submodule update --checkout --init
git submodule foreach git checkout master
git submodule foreach git pull
