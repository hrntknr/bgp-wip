#!/bin/bash
sudo vtysh << EOS
configure terminal
ip forwarding
ipv6 forwarding
no router bgp 65003
router bgp 65003
bgp router-id 10.1.0.30
neighbor 10.0.30.11 remote-as internal
neighbor 10.0.13.10 remote-as 65001
neighbor 10.0.34.40 remote-as 65004
address-family ipv4 unicast
network 10.0.30.0/24
network 10.0.13.30/32
network 10.0.34.30/32
neighbor 10.0.30.11 next-hop-self
exit-address-family
exit
exit
write memory
EOS
