function vagrant
  podman run --rm -it \
	--volume /run/libvirt:/run/libvirt \
	--volume "$HOME:$HOME:rshared" \
	--env "HOME=$HOME" \
	--workdir (pwd) \
	--net host \
	--privileged \
	--security-opt label=disable \
        quay.io/alwaystherookie/vagrant-container:latest $argv
end
