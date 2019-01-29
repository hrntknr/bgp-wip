#!/bin/bash
sudo vtysh << EOS
configure terminal
ip forwarding
ipv6 forwarding
no router bgp 65002
router bgp 65002
bgp router-id 10.1.0.20
neighbor 10.0.20.11 remote-as internal
neighbor 10.0.12.10 remote-as 65001
neighbor 10.0.24.40 remote-as 65004
address-family ipv4 unicast
network 10.0.20.0/24
network 10.0.12.20/32
network 10.0.24.20/32
neighbor 10.0.20.11 next-hop-self
exit-address-family
exit
exit
write memory
EOS
