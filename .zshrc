# Created by newuser for 5.7.1
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster

DEFAULT_USER=gdr

antigen apply

source ~/.config/zsh/zsh_aliases

