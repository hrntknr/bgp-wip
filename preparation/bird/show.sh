#!/bin/bash
export PATH=$PATH:/usr/local/sbin
birdc << EOS
show protocols all tor1
show protocols all tor2
show route
EOS
ping -c 3 -i 0 -q -w 1 10.0.12.10
ping -c 3 -i 0 -q -w 1 10.0.12.20
ping -c 3 -i 0 -q -w 1 10.0.13.10
ping -c 3 -i 0 -q -w 1 10.0.13.30
ping -c 3 -i 0 -q -w 1 10.0.24.20
ping -c 3 -i 0 -q -w 1 10.0.24.40
ping -c 3 -i 0 -q -w 1 10.0.34.30
ping -c 3 -i 0 -q -w 1 10.0.34.40
