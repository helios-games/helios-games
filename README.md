

Checkout submodules, then install and start start local cluster:

    ./init.sh

Run tests:

  TODO

Release change log lock:

    docker exec -it d582267e8684 psql -U wallet wallet

    delete from databasechangeloglock;

# Architecture

![Delpoyment](arch.png)
