#!/bin/sh

kubectl run cockroachdb -it --image=cockroachdb/cockroach:v19.1.1 --rm --restart=Never -- sql --insecure --host=cockroachdb-public
