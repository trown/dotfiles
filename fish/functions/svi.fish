# Defined in - @ line 1
function svi --wraps='sudo nvim' --description 'alias svi=sudo nvim'
  sudo nvim $argv;
end
