function gcr-tag-atlas
	podman pull gcr.io/graceful-earth-112011/$argv
podman tag gcr.io/graceful-earth-112011/$argv gcr.io/atlas-images/$argv
podman push gcr.io/atlas-images/$argv
end
