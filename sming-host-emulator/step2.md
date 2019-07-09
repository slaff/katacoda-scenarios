# Samples

## Basic_Blink

The command below builds the application as an executable in `out/Host/Linux/debug/firmware/app`.


```
cd $SMING_HOME/../samples/Basic_Blink
make -j3
```{{execute}}


Sit back and relax until the framework libraries and the application are compiled. This will take a while, though we're using `-j3` to speed things up a little.

Use `make run`{{execute}} to start the application. You can stop it by pressing `Ctrl-C` in the terminal.

Various other command-line options are supported, use `make help`{{execute}} for details.

There are a number of variables which control all the various build options. You can set these on the command line, but you only need to do this once as they are cached separately for each project. To find out what options are in force, use `make list-config`{{execute}}. You can reset them back to defaults using `make config-clean`{{execute}}


## Basic_Serial

Multiple serial terminals are supported via raw TCP network sockets.

```
cd $SMING_HOME/../samples/Basic_Serial
make -j3
```{{execute T1}}

This sample generates a filesystem image, so we need to copy it into the emulator's virtual flash memory using `make flash`{{execute}}.

Use `make run`{{execute T1}} to start the application.

In separate command windows, start two telnet sessions (a terminal for each serial port):

To view the output from UART1 open a new terminal and type:`telnet localhost 10001`{{execute T2}}. This UART only outputs text.

To view the output from UART0 open a new terminal and type: `telnet localhost 10000`{{execute T3}}. In this sample, enter `text`{{execute}} to echo back some text to the terminal.
If you enter `cat`{{execute T3}} it will echo a file from the filing system to UART1.


## HttpServer_Bootstrap

Now let's compile one of the HttpServer samples coming with Sming. 
If we want to access our web server we need to expose expose port 80 from our application to be accessible via our web browser.
```
sudo iptables -A FORWARD -i ens3 -o tap0 -p tcp --syn --dport 80 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -t nat -A PREROUTING -i ens3 -p tcp --dport 80 -j DNAT --to-destination 192.168.13.10
```{{execute}}

The commands above are needed only for this tutorial and environment. Normally you should not expose a Sming Framework based web server to be accessible from Internet.

To compile the HttpServer_Bootstrap sample we need to execute the following commands:

```
cd $SMING_HOME/../samples/HttpServer_Bootstrap
make flash
```{{execute}}


To view the output from UART0 open a new terminal and type: `telnet localhost 10000`{{execute T2}}
To view the output from UART1 open a new terminal and type:`telnet localhost 10001`{{execute T3}}

Take a look at the web server on this URL: 
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

