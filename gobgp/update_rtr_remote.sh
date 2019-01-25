#!/bin/bash
for i in {1..4}; do
  vagrant ssh rtr$i -c '/vagrant/vtysh-$HOSTNAME-1.sh'
  sleep 3
done
for i in {1..4}; do
  vagrant ssh rtr$i -c '/vagrant/vtysh-$HOSTNAME-2.sh'
  sleep 3
done
