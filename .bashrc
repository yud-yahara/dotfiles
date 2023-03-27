#! ~/.bashrc

export PS1='\[\033[34m\]\t \u\[\033[0m\]:\[\033[32m\]\w\[\033[0m\]\n\$ '

alias ls='ls --color=auto'
alias grep='grep --color'
# alias bat='/usr/local/bat/bat'
alias bat='/usr/bin/batcat'
alias vim='nvim'
alias scen='~/work/Scenargie/visuallab/Scenargie'

export PATH=/usr/local/bin:$PATH

# for gitbash (can make symlinks)
export MSYS=winsymlinks:nativestrict

#for TeX
PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-darwin/



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
