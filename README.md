

Checkout submodules, then install and start start local cluster:

    ./init.sh

Run tests:

  TODO

Credit account:

    curl -fv http://192.168.99.100:30002/api/wallet/transactions -X POST -H 'Content-Type: application/json' -d '{"amount": 1000}' 

Release change log lock:

    docker exec -it d582267e8684 psql -U wallet wallet

    delete from databasechangeloglock;

# Architecture

![Delpoyment](arch.png)
