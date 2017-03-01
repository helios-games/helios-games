#!/bin/sh
set -eu

eval $(minikube docker-env)

for U in ${*:-statedb walletdb wallet gf web} ; do
  U=$1
  case $U in
    statedb|walletdb) F=deploy/$U.yml ;;
    *) F=$U/$U.yml ;;
  esac
  kubectl create -f $F || kubectl replace --force -f $F
done
