# Defined in - @ line 1
function kd --wraps='sudo kind delete cluster' --description 'alias kd sudo kind delete cluster'
  sudo kind delete cluster $argv;
end
