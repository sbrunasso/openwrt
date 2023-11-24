#
#  Author: Steven Brunasso <sbrunasso@ucla.edu>
#    Date: Nov 23, 2023
#    Goal: Default setup script for OpenWrt 19.07.10  
#

## Update the Package List 
opkg update 

## Install Default Upgradable Modules from fresh bin file
opkg install luci-lib-ip luci-mod-system luci-theme-bootstrap luci-mod-status luci-proto-ppp
opkg install luci-mod-admin-full luci-base luci-proto-ipv6 luci-lib-nixio luci-lib-jsonc luci
opkg install luci-mod-network

# Collected errors:
#  * resolve_conffiles: Existing conffile /etc/config/luci is different from the conffile in the new package. The new conffile will be placed at /etc/config/luci-opkg.
#  * resolve_conffiles: Existing conffile /etc/config/ucitrack is different from the conffile in the new package. The new conffile will be placed at /etc/config/ucitrack-opkg.



## Install new modules 
opkg install nginx-mod-luci-ssl 
opkg install luci-app-ddns luci-app-opkg
opkg install luci-app-firewall luci-app-upnp
opkg install luci-app-freifunk-diagnostics
opkg install luci-app-https-dns-proxy luci-app-ntpc 
opkg install luci-app-acme

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


