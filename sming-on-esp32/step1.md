# Sming installation

We download Sming by getting the latest source code from the `develop` branch. To do this just clone the repository using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

We must set `SMING_HOME` to the location of the Sming Framework source code we've just downloaded. Do this by running `export SMING_HOME=$(pwd)/Sming/Sming`{{execute}}.

# ESP-IDF installation

ESP-IDF is a collection of software libraries for ESP32 and scripts to install and manage the needed toolchain. As of this writing Sming is compatible with ESP-IDF v4.1.x.

Sming comes with an install script that will do the heavy-lifting for us and will help us install the required operating system packages. Type the commands below:

```
$SMING_HOME/../Tools/install.sh esp32
source $SMING_HOME/../Tools/export.sh
```{{execute}}

With that we are ready with the initial setup. Time to go to the next step.
