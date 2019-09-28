function vim
  which podman > /dev/null 2>&1
  if test $status -eq 0
    priv-container-cmd quay.io/alwaystherookie/vim $argv
  else
    /usr/bin/vim $argv
  end
end
