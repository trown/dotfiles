function tf
	podman run --rm -it \
      --env "HOME=$HOME" \
      --workdir (pwd) \
      --net host \
      --privileged \
          --security-opt label=disable \
          --volume "$HOME:$HOME:rshared" \
          hashicorp/terraform:light $argv
end
