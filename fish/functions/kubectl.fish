function kubectl
  which podman > /dev/null 2>&1
  if test $status -eq 0
    priv-container-cmd quay.io/alwaystherookie/kubectl:1.14.3 $argv
  else
    /usr/bin/kubectl $argv
  end
end
