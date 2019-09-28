function wrtest
	helm del --purge webrouter
helm del --purge datalogger-webrouter
helm  install --kube-context omega --namespace omega --set cluster=omega --name=webrouter /home/trown/src/onna/webrouter/charts/webrouter -f /var/home/trown/src/onna/charts/clusters/_base_dev/values/webrouter.yaml
helm  install --kube-context omega --namespace omega --set cluster=omega --name=datalogger-webrouter /home/trown/src/onna/webrouter/charts/webrouter -f /var/home/trown/src/onna/charts/clusters/_base_dev/values/datalogger-webrouter.yaml
end
