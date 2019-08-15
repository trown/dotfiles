function kubens
  command kubectl config set-context --current --namespace=$argv
end
