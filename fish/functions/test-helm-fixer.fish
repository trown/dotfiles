function test-helm-fixer
	set protoroot $HOME/go/src/k8s.io/helm/_proto
cargo run -q -- -c webrouter -n bar |
gunzip |
protoc -I $protoroot --decode hapi.release.Release $protoroot/hapi/release/release.proto
end
