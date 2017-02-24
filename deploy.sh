#!/bin/sh
set -eux

for F in \
  ./deploy/statedb.yml \
  ./deploy/walletdb.yml \
  ./wallet/wallet.yml \
  ./gf/gf.yml \
  ./web/web.yml \
  ; do
  kubectl create -f $F || kubectl replace --force -f $F
done
