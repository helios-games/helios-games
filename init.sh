#!/bin/sh
set -eux

brew cask install minikube

minikube start
minikube addons enable heapster

./sync.sh
