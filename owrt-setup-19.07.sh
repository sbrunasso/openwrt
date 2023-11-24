#
#  Author: Steven Brunasso <sbrunasso@ucla.edu>
#    Date: Nov 23, 2023
#    Goal: Default setup script for OpenWrt 19.07.10  
#

## Update the Package List 
opkg update 

## Install new modules 
opkg install luci-ssl
opkg install luci-app-ddns luci-app-opkg
opkg install luci-app-firewall luci-app-upnp
opkg install luci-app-freifunk-diagnostics
opkg install luci-app-https-dns-proxy luci-app-ntpc 

## Install the statstics modules 
# Default Sets of modules 
# Configuring collectd-mod-rrdtool.
# Configuring collectd-mod-iwinfo.
# Configuring collectd-mod-cpu.
# Configuring collectd-mod-memory.
# Configuring collectd-mod-interface.
# Configuring collectd-mod-load.
# Configuring collectd-mod-network.

opkg install luci-app-statistics luci-app-wol
opkg install collectd-mod-apache collectd-mod-conntrack collectd-mod-iptables collectd-mod-nginx collectd-mod-ntpd collectd-mod-ping


