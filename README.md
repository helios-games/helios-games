

Checkout submodules, then install and start start local cluster:

    ./init.sh

Run tests:

  TODO

Credit account:

    docker exec -it 3a9db2a4b731 psql -U wallet wallet

    update wallet set balance = 1000;

Release change log lock:

    docker exec -it d582267e8684 psql -U wallet wallet

    delete from databasechangeloglock;

# Architecture

![Delpoyment](arch.png)
