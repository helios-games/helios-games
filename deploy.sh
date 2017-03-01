#!/bin/sh
set -eu

for U in ${*:-statedb walletdb wallet gf web} ; do
  case $U in
    statedb|walletdb) F=deploy/$U.yml ;;
    *) F=$U/$U.yml ;;
  esac
  kubectl create -f $F || kubectl replace --force -f $F
done
