function vpn
  gpg -d .passwords/trown/onna/openvpn.gpg
  nmcli c up onna-intra --ask
  sudo ip route delete default
end
