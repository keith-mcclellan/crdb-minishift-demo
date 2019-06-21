#!/bin/sh

# License
echo Installing License: $1 -- $license
license=`/Users/keith/utils/bin/crl-lic -type Evaluation -site -org $1 -months 1 | awk '/crl.*/{print $NF}'`
echo $license

kubectl run cockroachdb -it --image=cockroachdb/cockroach:v19.1.1 --rm --restart=Never -- sql --execute "SET CLUSTER SETTING enterprise.license = '$license';" --insecure --host=cockroachdb-public
kubectl run cockroachdb -it --image=cockroachdb/cockroach:v19.1.1 --rm --restart=Never -- sql --execute "SET CLUSTER SETTING cluster.organization = '$1';" --insecure --host=cockroachdb-public
