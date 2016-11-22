# fish config file

# first, source useful functions
source $HOME/.config/fish/keychain_environment_variables.fish

# set basic config
set fish_greeting
set -x PATH /usr/local/bin $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
set -x LSCOLORS hxfxcxdxbxegedabagacad
set -x EDITOR "mate -w"

# set app-specific config
set -x HOMEBREW_GITHUB_API_TOKEN 805d08658547a864b9ecc6f77d5d96b642c598a6
