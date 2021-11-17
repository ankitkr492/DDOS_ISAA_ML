#!/bin/bash
for i in {1..10000}
do
   echo "Installing dependencies for DDOS Detection Project"
   sudo apt install -y python3
   sudo apt install -y openvswitch-switch
   sudo apt install -y python3-pip
   sudo pip3 install -y ryu
   sudo apt install -y mininet
   sudo apt install -y iperf
   sudo apt install -y hping3
   sudo pip3 install -y numpy
   sudo pip3 install -y sklearn
   pip install eventlet==0.30.2
   sudo /usr/share/openvswitch/scripts/ovs-ctl start
   
done