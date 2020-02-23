function kafka-view
	podman run --rm -p 8080:8080 -v `pwd`/config.yaml:/root/config.yaml fede1024/kafka-view --conf config.yaml
end
