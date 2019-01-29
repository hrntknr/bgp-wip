#!/bin/bash
cp /vagrant/gobgpd-$HOSTNAME.yml /etc/default/gobgpd.yml
systemctl restart gobgpd
