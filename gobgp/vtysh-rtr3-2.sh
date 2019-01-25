#!/bin/bash
sudo vtysh << EOS
configure terminal
router bgp 65003
address-family ipv4 flowspec
neighbor 10.0.30.11 activate
neighbor 10.0.13.10 activate
neighbor 10.0.34.40 activate
exit-address-family
exit
exit
write memory
EOS
