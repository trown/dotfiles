function orm-env
	export ONNA_DEPLOY_REPO=$HOME/src/onna/deployments
export ONNA_RELEASE_REPO=$HOME/src/onna/releases
export ONNA_ENV_REPO=$HOME/src/onna/environments
export AUTH_TOKEN=(gcloud auth print-access-token)
export RUST_LOG=onna_release_manager=debug
end
