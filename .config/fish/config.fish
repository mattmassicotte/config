# set basic config
set fish_greeting
set -x LSCOLORS hxfxcxdxbxegedabagacad
set -x EDITOR "mate -w"

# used for compiling Swift compiler
set -x SCCACHE_CACHE_SIZE "50G"

tabs -4

# Homebrew
set -x PATH /opt/homebrew/bin $HOME/.cargo/bin /opt/local/bin /opt/local/sbin $PATH
set -x PKG_CONFIG_PATH /opt/homebrew/lib/pkgconfig $PKG_CONFIG_PATH

# rbenv
if test (/usr/bin/which rbenv)
	set -x PATH $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
	status --is-interactive; and source (rbenv init -|psub)
end

# source local config
if test -e $HOME/.local/config.fish
	source $HOME/.local/config.fish
end

# source function definitions
source $HOME/.config/fish/keychain_environment_variables.fish
