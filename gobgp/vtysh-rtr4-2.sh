#!/bin/bash
sudo vtysh << EOS
configure terminal
router bgp 65004
address-family ipv4 flowspec
neighbor 10.0.40.11 activate
neighbor 10.0.24.20 activate
neighbor 10.0.34.30 activate
exit-address-family
exit
exit
write memory
EOS
