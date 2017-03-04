

Checkout submodules, then install and start start local cluster:

    ./sync.sh

Run tests:

  TODO

Credit account:

    kubectl exec -it postgres-0 -- psql -U wallet wallet -c 'update wallet set balance = 1000;'

Release change log lock:

    kubectl exec -it postgres-0 -- psql -U wallet wallet -c 'delete from databasechangeloglock;''

# Architecture

![Delpoyment](arch.png)
