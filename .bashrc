# ~/.bashrc

export SHELL=/bin/bash
alias k=kubectl
alias vi=nvim
alias vim=nvim
alias svi="sudo nvim"
eval "$(starship init bash)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_ENV=development
