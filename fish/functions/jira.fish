function jira
  podman run --rm -it \
	--volume "$HOME:$HOME:rshared" \
	--env "HOME=$HOME" \
	--workdir $HOME/.config/ \
	--net host \
	--privileged \
	--security-opt label=disable \
        quay.io/alwaystherookie/jira-cli:latest $argv
end
