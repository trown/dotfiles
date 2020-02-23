function whsetup
	kubectl apply -f deployment/deployment.yaml
kubectl apply -f deployment/mutatingwebhook-ca-bundle.yaml
end
