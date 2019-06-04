# Preparation

## Source code

Let's get the latest source code from the `develop` branch. To do this just clone the reposiotry using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

## Environmental variables

### SMING_HOME
Once the source code has been downloaded locally enter the newly created directory using `cd Sming`{{execute}} and make sure to set the following important environmental variable `SMING_HOME`. SMING_HOME should be set and must point to the location of the Sming Framework source code. In our case we can set that variable by running `export SMING_HOME=$(pwd)/Sming`{{execute}}.

### SMING_ARCH
Another important environmental variable that needs to be set if we want to use the Host Emulator is `SMING_ARCH`. This one needs to be set to `Host`. Set it by running `export SMING_ARCH=Host`{{execute}}.

## Compilation

CMake 3.8 or newer is required to build LWIP, our network stack. Ensure you are using relatively recent compilers, with 32-bit libraries available. For Linux, you may require the gcc-multilib and g++-multilib packages to build 32-bit executables on a 64-bit OS. To install the required packages under Ubuntu run the following command:
`sudo apt-get install cmake gcc-multilib g++-multilib`{{execute}}


