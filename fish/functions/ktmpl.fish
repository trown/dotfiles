function ktmpl
	which podman > /dev/null 2>&1
	if test $status -eq 0
		priv-container-cmd jimmycuadra/ktmpl $argv
	else
		$HOME/.local/bin/ktmpl $argv
	end
end
