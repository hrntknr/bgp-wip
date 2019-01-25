#!/bin/bash
for i in {1..4}; do
  vagrant ssh ctrl$i -c 'sudo /vagrant/update_ctrl.sh'
done
