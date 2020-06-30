function doit
	set OUTDIR (mktemp -d)
for runner in (kubectl get applications -l app.kubernetes.io/instance=dev-test -o json | jq -r '.items[] | select(.status.sync.status != "Synced").status.sync.comparedTo | @sh "pushd \(.source.path); helm secrets template . \(.source.plugin.env | map(.value) | join(" ")) | tee $OUTDIR/\(.source.path | split("/") | reverse[0]).helm_template.error | head -n -1 | kubectl apply -f - --dry-run > $OUTDIR/\(.source.path | split("/") | reverse[0]).kube_apply.error;popd"' | sed "s/'//g")
eval $runner
end
echo
echo "==========================================="
echo "Logs saved to $OUTDIR"
echo "==========================================="
end
