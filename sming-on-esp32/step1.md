# Sming installation

We download Sming by getting the latest source code from the `develop` branch. To do this just clone the repository using the following command `git clone https://github.com/SmingHub/Sming.git`{{execute}}

We must set `SMING_HOME` to the location of the Sming Framework source code we've just downloaded. Do this by running `export SMING_HOME=$(pwd)/Sming/Sming`{{execute}}.

# ESP-IDF installation

ESP-IDF is a collection of software libraries for ESP32 and scripts to install and manage the needed toolchain. As of this writing Sming is compatible with ESP-IDF v4.1.x.

Before we start with the ESP-IDF installation we will have to install the required operating system packages. This can be done with the command below:

```
apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git wget flex bison gperf cmake ninja-build ccache libffi-dev libssl-dev dfu-util python3 python3-pip python3-setuptools && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3 10 && \
    python -m pip install pyserial --upgrade virtualenv==16.7.9
```{{execute}}

Now let's download the ESP-IDF SDK:

```
git clone -b release/v4.1 https://github.com/espressif/esp-idf.git
```{{execute}}

We must set the location of the SDK for Sming to find:

```
export IDF_PATH=$(pwd)/esp-idf
```{{execute}}

Finally, install the proper toolchain:

```
$IDF_PATH/install.sh
```{{execute}}

With that we are ready with the initial setup. Time to go to the next step.
