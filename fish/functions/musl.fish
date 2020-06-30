function musl
priv-container-cmd -e CARGO_TARGET_DIR=/target -v /var/home/trown/src/onna/onna-release-manager/target:/target:Z clux/muslrust:stable cargo build --target x86_64-unknown-linux-musl --release
end
