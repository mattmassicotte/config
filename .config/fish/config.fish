# set basic config
set fish_greeting
set -x LSCOLORS hxfxcxdxbxegedabagacad
set -x EDITOR "mate -w"

# MacPorts
set -x MANPATH /opt/local/share/man $MANPATH
set -x PATH /opt/local/bin /opt/local/sbin $PATH

# rbenv
if test (which rbenv)
	set -x PATH $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
	status --is-interactive; and source (rbenv init -|psub)
end

# source local config
if test -e $HOME/.local/config.fish
    source $HOME/.local/config.fish
end

# source function definitions
source $HOME/.config/fish/keychain_environment_variables.fish
