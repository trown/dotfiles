function release-deploy
	podman run --rm -it \
  -v "$HOME/.local/bin/helm:/usr/bin/helm:z" \
  -v "$HOME/.kube/config:/root/.kube/config:z" \
  -v "$PWD/all_overrides.yaml:/usr/src/onna/all_overrides.yaml:z" \
  -v "$PWD/values_custom:/usr/src/onna/values_custom:z" \
  --name onna-release \
  ops-release:init-test \
  python package-deploy.py \
    --kube-context cluster01.k8s.onna.io \
    --cluster cluster01.k8s.onna.io \
    --deploy webrouter \
    --config-folder /usr/src/onna/values_custom
end
