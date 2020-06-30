function priv-container-cmd
podman run --rm -it \
--env "HOME=$HOME" \
--workdir (pwd) \
--net host \
--privileged \
--security-opt label=disable \
--volume "$HOME:$HOME" \
--cgroup-manager=systemd \
$argv
end
