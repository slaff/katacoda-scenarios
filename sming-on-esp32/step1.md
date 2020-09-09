# Sming installation

We download Sming by getting the latest source code from the `develop` branch. To do this just clone the repository using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

We must set `SMING_HOME` to the location of the Sming Framework source code we've just downloaded. Do this by running `export SMING_HOME=$(pwd)/Sming/Sming`{{execute}}.

# ESP-IDF installation

ESP-IDF is a collection of software libraries for ESP32 and scripts to install and manage the needed toolchain. As of this writing Sming is compatible with ESP-IDF v4.0.x.

In this tutorial we will get the version 4.0. This can be done using the following command `git clone -b v4.0 --recursive https://github.com/espressif/esp-idf.git`{{execute}}

Once the download finishes we have to install the proper toolchain. The installation can be done using the following commands:

```
cd esp-idf # Enter the directory with the latest ESP-IDF source code
./install.sh # And run the installation script
```{{execute}} 


Once the commands above finish we have to do export the needed ESP-IDF environmental variables.
```
. ./export.sh
echo "ESP-IDF is installed at $IDF_PATH." 
```{{execute}}

With that we are ready with the initial setup. Time to go to the next step.
