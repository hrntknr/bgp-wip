#!/bin/bash
sudo vtysh << EOS
configure terminal
router bgp 65001
address-family ipv4 flowspec
neighbor 10.0.10.11 activate
neighbor 10.0.12.20 activate
neighbor 10.0.13.30 activate
exit-address-family
exit
exit
write memory
EOS
