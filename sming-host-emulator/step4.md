# pymux
If you want to use in one terminal window all three data streams: emulator logs, UAR0 and UAR1 then you can install pymux.
[Pymux](https://github.com/prompt-toolkit/pymux) is a terminal multiplexer, like tmux, written in Python.

In order to install it you should execute the following command
```
pip install pymux
```{{execute}}

Once installed we can provide an initial configuration to pymux. A suggested configuration is given below:
```
display-message "To see UART0 output press 'Ctrl-b' followed by '0'. To see UART1 output press 'Ctrl-b' followed by '1'"
bind-key "|" split-window -h
bind-key "-" -- split-window -v
bind-key "0" split-window -h "telnet localhost 10000"
bind-key "1" split-window -h "telnet localhost 10001"
```{{copy}}

The configuration above allows us to open a new window pane that will make a connection to UAR0 by pressing at the same time "Ctrl-b" followed by "0".
That means that you have to press the Control(Ctrl) key and key "b" at the same time. After that you should release them and press "0".
The output from UART1 can be seen by pressing "Ctrl-b" and "1".

If you want to try it execute the command below:
```
pymux -f ~/pymux.conf
```{{execute}}

Once the pymux terminal has started you can run one of the compiled samples, as shown below:

```
cd $SMING_HOME/../samples/Basic_Serial
make flash
```{{execute}}

And then press "Ctrl-b" followed by 1 to see the UART1 output and "Ctrl-b" followed by 0 to see the UART0 output.