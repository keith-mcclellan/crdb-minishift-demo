#!/bin/sh

kubectl run cockroachdb -it --image=cockroachdb/cockroach:v19.1.1 --rm --restart=Never -- workload init tpcc 'postgresql://root@cockroachdb-public:26257?sslmode=disable'
