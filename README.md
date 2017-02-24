
Checkout submodules:

  TODO

Start local cluster:

    brew install minikube
    minikube start
    minikube addons enable heapster
    for F in $(find . -maxdepth 2 -type f -name '*.yml'); do
      kubectl create -f $F
    do

Run tests:

  TODO

# Architecture

![Delpoyment](arch.png)
