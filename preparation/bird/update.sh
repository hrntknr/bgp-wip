#!/bin/bash
cp /vagrant/bird-$HOSTNAME.conf /usr/local/etc/bird.conf
systemctl restart bird
