#!/bin/sh
set -eux

git submodule update --checkout
git submodule foreach git checkout master
git submodule foreach git pull
