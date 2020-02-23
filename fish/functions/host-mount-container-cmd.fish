function host-mount-container-cmd
	podman run --rm -it \
--net host \
--privileged \
--security-opt label=disable \
--volume "$HOME:/host" \
$argv
end
