# feb/21/2019 15:34:54 by RouterOS 6.42.10
# software id = WQ0Y-IV2Y
#
# model = 450G
# serial number = 2326018E1C48
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool1 ranges=192.168.100.50-192.168.100.254
/ip dhcp-client
add dhcp-options=hostname,clientid disabled=no interface=ether1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether5 src-address=\
    192.168.100.0/24
/system clock
set time-zone-name=Europe/Prague
/system package update
set channel=long-term
