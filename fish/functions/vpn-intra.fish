function vpn-intra
	sudo openvpn --config .config/vpn/intra.ovpn --auth-user-pass .config/vpn/up
end
