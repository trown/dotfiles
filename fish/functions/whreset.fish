function whreset
	kubectl delete -f deployment/mutatingwebhook-ca-bundle.yaml
kubectl delete deploy sleep
kubectl delete deploy configmap-injector
end
