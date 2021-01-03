# Defined in - @ line 1
function kup --wraps='sudo kind create cluster --kubeconfig /home/trown/.kube/config' --description 'alias kup sudo kind create cluster --kubeconfig /home/trown/.kube/config'
  sudo kind create cluster --kubeconfig /home/trown/.kube/config $argv;
end
