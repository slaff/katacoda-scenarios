# Samples

## Basic_Blink

The command below builds the application as an executable in out/firmware/app. Various command-line options are supported, use --help for details.


```
cd $SMING_HOME/../samples/Basic_Blink
make flash
```{{execute}}


Sit back and relax until the framework library and the application are compiled. This will take a while.
Once the application has compiled and started you can stop it by pressing `Ctrl-C` in the terminal.

Use `make flashinit` to clear and reset the file. 
Use `make flashfs` to copy the generated SPIFFS image into the backing file. Use `make flash` to do a flashfs then a run. 
Use `make run` to execute the application. Command-line parameters are passed in SMING_TARGET_OPTIONS so you can customise this via environment or application makefile thus:

export SMING_TARGET_OPTIONS="--pause --uart=0"

To find out what options are in force, use `make list-config`{{execute}}.

## Basic_Serial

Multiple serial terminals are supported via raw TCP network sockets.

```
cd $SMING_HOME/../samples/Basic_Serial
make flash
```{{execute}}

For example, start the Basic_Serial sample application we build above, with support for both UARTs using the following options:

out/firmware/app --pause --uart=0 --uart=1

Note: if you don't specify the pause option then the Sming application will start running immediately and any serial output will be discarded.

In separate command windows, start two telnet sessions (a terminal for each serial port):

To view the output from UART0 open a new terminal and type: `telnet localhost 10000`{{execute T2}}
To view the output from UART1 open a new terminal and type:`telnet localhost 10001`{{execute T3}}

## HttpServer_Bootstrap

Now let's compile one of the HttpServer samples coming with Sming. 
If we want to access our web server we need to expose expose port 80 from our application to be accessible via our web browser.
```
sudo iptables -A FORWARD -i ens3 -o tap0 -p tcp --syn --dport 80 -m conntrack --ctstate NEW -j ACCEPT
sudo iptables -t nat -A PREROUTING -i ens3 -p tcp --dport 80 -j DNAT --to-destination 192.168.13.10
```{{execute}}

The commands above are neede only for this tutorial and environment. Normally you should not expose a Sming Framework based web server to be accessible from Internet.

To compile the HttpServer_Bootstrap sample we need to execute the following commands:

```
cd $SMING_HOME/../samples/HttpServer_Bootstrap
make flash
```{{execute}}


To view the output from UART0 open a new terminal and type: `telnet localhost 10000`{{execute T2}}
To view the output from UART1 open a new terminal and type:`telnet localhost 10001`{{execute T3}}

Take a look at the web server on this URL: 
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/




