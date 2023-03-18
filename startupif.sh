#Stop 4G and VPN interface
sudo ifconfig enx001e101f0000 down
#Retrieve an IP address from 4G interface
sudo dhclient enx001e101f0000
#Set DNS server when this information is missing
sudo resolvectl dns enx001e101f0000 192.168.8.1
#Start VPN client and connect to remote Freebox
sudo openvpn --config config_openvpn_routed_sebnuc.ovpn  --auth-user-pass .mdp --auth-nocache --mute-replay-warnings --connect-retry 300 --connect-retry-max 1
