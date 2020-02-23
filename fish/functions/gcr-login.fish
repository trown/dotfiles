function gcr-login
	podman login -u oauth2accesstoken -p (gcloud auth print-access-token) https://gcr.io
end
