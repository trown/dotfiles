function repcli
	podman run --rm -it \
--net host \
--privileged \
--security-opt label=disable \
--volume "$HOME:/host" \
replicated/vendor-cli:0.17.2 \
--token 6f5eb59cb7ecdec5dc46abfb0214533e6199ad453d18a63eb68303e87cb600ea \
--app onna-kots \
$argv
end
