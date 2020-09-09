# Samples

## Basic_Blink

The command below builds the Basic_Blink application for the Esp32 microcontroller.


```
cd $SMING_HOME/../samples/Basic_Blink
make -j3 SMING_ARCH=Esp32
```{{execute}}


Sit back and relax until the ESP-IDF libraries, Sming libraries and the application are compiled. This will take a while, though we're using `-j3` to speed things up a little.

Notice that we are using the directive `SMING_ARCH=Esp32`. This directive instructs the Sming build system to build the application for the Esp32 architecture.

Once we have the applications compiled we can flash the compiled application on the ESP32 device using the following command:
```
make flash
```

This command should be executed on your local computers as this tutorial does not have a real ESP32 device attached to it.

## Basic_Serial

You can build also other sample applications as for example the Basic_Serial one. This can be done using the commands below:

```
cd $SMING_HOME/../samples/Basic_Serial
make -j3 SMING_ARCH=Esp32
```{{execute}}

