#!/bin/sh
set -eux

eval $(minikube docker-env)

W=${*:-statedb walletdb wallet gf web}

for U in $W ; do
  case $U in
    statedb|walletdb )
        F=deploy/$U.yml
      ;;
    *)
      docker images |grep alexec/$U|awk '{printf "%s:%s ", $1, $2}'|xargs docker rmi  --force
      F=$U/$U.yml
      ;;
  esac
  kubectl create -f $F || kubectl replace --force -f $F
done
