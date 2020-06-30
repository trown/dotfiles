function doit2
	set OUTDIR (mktemp -d)
for cmd in (kubectl get applications -l app.kubernetes.io/instance=dev-test -o json | jq -r '.items[] | select(.status.sync.status != "Synced").status.sync.comparedTo | @sh "echo linting \(.source.path); pushd \(.source.path); helm secrets template . \(.source.plugin.env | map(.value) | join(" ")) | tee $OUTDIR/\(.source.path | split("/") | reverse[0]).helm_template.error | grep -v ^removed | kubectl apply -f - --dry-run > $OUTDIR/\(.source.path | split("/") | last).kube_apply.error;popd"' | sed "s/'//g" | sed "s/\^/\\\^/g")
eval $cmd
end
echo
echo "==========================================="
echo "Logs saved to $OUTDIR"
echo "==========================================="
end
