function podman
	which podman > /dev/null 2>&1
if test $status -eq 0
/usr/bin/podman $argv
else
flatpak-spawn --host podman $argv
end
end
