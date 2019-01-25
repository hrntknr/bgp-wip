#!/bin/bash
sudo vtysh << EOS
configure terminal
ip forwarding
ipv6 forwarding
no router bgp 65001
router bgp 65001
bgp router-id 10.1.0.10
neighbor 10.0.10.11 remote-as internal
neighbor 10.0.12.20 remote-as 65002
neighbor 10.0.13.30 remote-as 65003
address-family ipv4 unicast
network 10.0.10.0/24
network 10.0.12.10/32
network 10.0.13.10/32
neighbor 10.0.10.11 next-hop-self
exit-address-family
exit
exit
write memory
EOS
