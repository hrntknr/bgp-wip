#!/bin/bash
sudo vtysh << EOS
configure terminal
router bgp 65002
address-family ipv4 flowspec
neighbor 10.0.20.11 activate
neighbor 10.0.12.10 activate
neighbor 10.0.24.40 activate
exit-address-family
exit
exit
write memory
EOS
