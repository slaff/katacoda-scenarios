# Memory analysis

[Valgrind](http://valgrind.org/) is a powerful tool that makes it easier to detect memory issues in an application. Like memory leaks and invalid memory reads.
The commands below demonstrate the use of valgrind with the HttpServer_Bootstrap sample.

```
cd $SMING_HOME/../samples/HttpServer_Bootstrap
valgrind  --track-origins=yes --leak-check=full out/firmware/app --flashfile=out/firmware/flash.bin --uart=0 --uart=1 --pause=5 --flashsize=4M
```{{execute}}

To view the output from UART0 open a new terminal and type: `telnet localhost 10000`{{execute T2}}
To view the output from UART1 open a new terminal and type:`telnet localhost 10001`{{execute T3}}

Take a look at the web server on this URL:
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/


