# Source code

Let's get the latest source code from the `develop` branch. To do this just clone the repository using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

# Environmental variables

## SMING_HOME
We must set `SMING_HOME` to the location of the Sming Framework source code we've just downloaded. Do this by running `export SMING_HOME=$(pwd)/Sming/Sming`{{execute}}.

## SMING_ARCH
To use the Host Emulator we must set this variable to `Host`, like this: `export SMING_ARCH=Host`{{execute}}.

# Setup

## Development Tools

The required development tools can be downloaded and installed as follows:

```
Sming/Tools/install.sh host
```{{execute}}

The environment must be configured every time a new shell is opened:

```
source Sming/Tools/export.sh
```{{execute}}

## Analyzing

Valgrind is a tool that helps find memory issues within your application. In order to install it we need to execute the following command:
`sudo apt-get install -y valgrind libc6-dbg:i386`{{execute}}

## Network

Before we start with our first sample we should setup special networking interfaces for our applications.
We have a script that does that for us. To see its content execute the command below:

`cat $SMING_HOME/Arch/Host/Tools/setup-network-linux.sh`{{execute}}

Now it is time to actually run the script.

`$SMING_HOME/Arch/Host/Tools/setup-network-linux.sh ens3`{{execute}}

It will create a tap0 network interface for our applications and will allow our applications to access Internet.

With that we are ready with the initial setup. Time to go to the next step.
