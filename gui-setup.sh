#!/bin/sh

(kubectl port-forward cockroachdb-0 8080 &)
