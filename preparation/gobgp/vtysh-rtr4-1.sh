#!/bin/bash
sudo vtysh << EOS
configure terminal
ip forwarding
ipv6 forwarding
no router bgp 65004
router bgp 65004
bgp router-id 10.1.0.40
neighbor 10.0.40.11 remote-as internal
neighbor 10.0.24.20 remote-as 65002
neighbor 10.0.34.30 remote-as 65003
address-family ipv4 unicast
network 10.0.40.0/24
network 10.0.24.10/32
network 10.0.34.10/32
neighbor 10.0.40.11 next-hop-self
exit-address-family
exit
exit
write memory
EOS
