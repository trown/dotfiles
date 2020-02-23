# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/trown/.local/gcloud/path.fish.inc' ]; . '/home/trown/.local/gcloud/path.fish.inc'; end
if which rvm 2> /dev/null; rvm default; end
starship init fish | source
