# crdb-minishift-demo

Assumes you already have minishift installed. On mac, if you use brew, you can do `brew cask install minishift`.  Also requires VirtualBox

Master script to get an environment up and running is 'k8s-setup.sh' - it refers to other scripts.  Search your local copy for /Users/keith and replace with the appropriate locations so they run properly.

Benchmarks require you to run the corresponding init script before running the benchmarks.  Benchmarks run for 10 minutes.  

Master script creates the kubectl tunnel for you, so you can use `kubectl ...` commands if you have kubectl installed. You can also hit the GUI over `localhost:8080`

Usually, I run the benchmark and kill a pod and show the benchmark keeps running. Don't kill pod0 as we're connecting directly to that one. An enhancement would be to use the service ingress LB or install a load balancer and connect to that instead. Then you could kill any pod.

`launch-crdb-sql.sh` will start a CLI pod in your minishift environment and shell you into it for custom queries.
