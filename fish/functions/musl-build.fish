function musl-build
	priv-container-cmd ekidd/rust-musl-builder:beta-openssl11 cargo build --release
end
