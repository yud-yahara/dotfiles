#! ~/.bashrc

export PS1='\[\033[34m\]\t \u\[\033[0m\]:\[\033[32m\]\w\[\033[0m\]\$ '''

alias ls='ls --color=auto'
alias grep='grep --color'
# alias bat='/usr/local/bat/bat'
alias bat='/usr/bin/batcat'
#alias vim='mvim -v'
alias scen='~/work/Scenargie/visuallab/Scenargie'

export PATH=/usr/local/bin:$PATH

# for gitbash (can make symlinks)
export MSYS=winsymlinks:nativestrict

#for TeX
PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-darwin/


