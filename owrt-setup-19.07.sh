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
opkg install luci-app-statistics luci-app-wol



