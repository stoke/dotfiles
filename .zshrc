# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

source ~/src/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle node
antigen bundle npm
antigen bundle nvm
antigen bundle command-not-found

# Load the theme.
antigen theme darkblood

# Tell antigen that you're done.
antigen apply

nvm use 0.11
