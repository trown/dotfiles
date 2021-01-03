# Defined in - @ line 1
function kubectx --wraps='kubectl config use-context' --description 'alias kubectx=kubectl config use-context'
  kubectl config use-context $argv;
end
