function make
  which podman > /dev/null 2>&1
  if test $status -eq 0
    priv-container-cmd quay.io/alwaystherookie/make $argv
  else
    /usr/bin/make $argv
  end
end
