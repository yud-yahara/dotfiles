# ~/.bash_profile

export PS1='\[\033[34m\]\t \u\[\033[0m\]:\[\033[32m\]\w\[\033[0m\]\$ '

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

