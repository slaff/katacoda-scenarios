# Memory analysis

[Valgrind](http://valgrind.org/) is a powerful tool that makes it easier to detect memory issues in an application. Like memory leaks and invalid memory reads.
For easier to understand results we should re-compile the application with the following directive `ENABLE_MALLOC_COUNT=0`.
The commands below demonstrate the use of valgrind with the HttpServer_Bootstrap sample.

```
cd $SMING_HOME/../samples/HttpServer_Bootstrap
make ENABLE_MALLOC_COUNT=0
make valgrind
```{{execute}}

Take a look at the web server on this URL:
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/
