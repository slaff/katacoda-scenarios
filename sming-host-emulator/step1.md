# Source code

Let's get the latest source code from the `develop` branch. To do this just clone the repository using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

# Environmental variables

## SMING_HOME
Once the source code has been downloaded locally enter the newly created directory using `cd Sming`{{execute}} and make sure to set the following important environmental variable `SMING_HOME`. SMING_HOME should be set and must point to the location of the Sming Framework source code. In our case we can set that variable by running `export SMING_HOME=$(pwd)/Sming`{{execute}}.

## SMING_ARCH
Another important environmental variable that needs to be set if we want to use the Host Emulator is `SMING_ARCH`. This one needs to be set to `Host`. Set it by running `export SMING_ARCH=Host`{{execute}}.

# Tools

## Building

### CMake
CMake 3.8 or newer is required to build LWIP, our network stack. One of the ways to install a newer version is to run the commands below:

```
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.14.4/cmake-3.14.4-Linux-x86_64.sh 
sudo mkdir /opt/cmake
sudo sh cmake-3.14.4-Linux-x86_64.sh --skip-license --prefix=/opt/cmake
sudo ln -s /opt/cmake/bin/cmake /usr/bin/cmake
```{{execute}}

### 32-bit libraries
Ensure you are using relatively recent compilers, with 32-bit libraries available. For Linux, you may require the gcc-multilib and g++-multilib packages to build 32-bit executables on a 64-bit OS. To install the required packages under Ubuntu run the following command:
`sudo apt-get install -y gcc-multilib g++-multilib`{{execute}}

## Analyzing

Valgrind is a tool that helps find memory issues within your application. In order to install it we need to execute the following command:
`sudo apt-get install -y valgrind libc6-dbg:i386`{{execute}}

# Setup

## Network

Before we start with our first sample we should setup special networking interfaces for our applications. 
We have a script that does that for us. To see its content execute the command below:

`cat $SMING_HOME/Arch/Host/Tools/setup-network-linux.sh`{{execute}}

Now it is time to actually run the script. 

`$SMING_HOME/Arch/$SMING_ARCH/Tools/setup-network-linux.sh ens3`{{execute}}

It will create a tap0 network interface for our applications and will allow our applications to access Internet.

With that we are ready with the initial setup. Time to go to the next step.
