function rebuild
	git commit -am "Savepoint"
set hash (git log -n1 --oneline | cut -f1 -d ' ')
podman build -t quay.io/alwaystherookie/configmap-injector:$hash -f Dockerfile.multistage
podman push quay.io/alwaystherookie/configmap-injector:$hash
end
