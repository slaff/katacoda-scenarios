#!/bin/bash

cat << EOF
display-message "To see UART0 output press 'Ctrl-b' followed by '0'. To see UART1 output press 'Ctrl-b' followed by '1'"
bind-key "|" split-window -h
bind-key "-" -- split-window -v
bind-key "0" split-window -h "telnet localhost 10000"
bind-key "1" split-window -h "telnet localhost 10001"
EOF > ~/.pymux.conf