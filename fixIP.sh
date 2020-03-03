#!/usr/bin/env bash

function minikube_reset_vbox_dhcp_leases() {
  # # Reset Virtualbox DHCP Lease Info
  # common_message_print "Resetting Virtualbox DHCP Lease Info..."
  kill -9 $(ps aux |grep -i "vboxsvc\|vboxnetdhcp" | awk '{print $2}') 2>/dev/null

  if [[ -f ~/.config/VirtualBox/HostInterfaceNetworking-vboxnet0-Dhcpd.leases ]] ; then
    rm  ~/.config/VirtualBox/HostInterfaceNetworking-vboxnet0-Dhcpd.leases
  fi
}

minikube_reset_vbox_dhcp_leases
