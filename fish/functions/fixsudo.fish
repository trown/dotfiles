function fixsudo
	podman exec $argv chmod 600 /etc/sudoers.d/toolbox-trown
end
