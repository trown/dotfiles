function release-init
	podman run -it \
  -v "$HOME/.local/bin/helm:/usr/bin/helm:z" \
  -v "$HOME/.kube/config:/root/.kube/config:z" \
  --name onna-init \
  ops-release:init-test \
  sleep 1 
podman cp onna-init:/usr/src/onna/values_custom $PWD
podman rm onna-init
end
