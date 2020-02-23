function vpn-signup
	sudo openvpn --config .config/vpn/signup.ovpn --auth-user-pass .config/vpn/up
end
