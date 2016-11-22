set PATH /usr/local/bin $HOME/.rbenv/bin $HOME/.rbenv/shims $PATH
set LSCOLORS "hxfxcxdxbxegedabagacad"
set EDITOR "mate -w"

### Functions for setting and getting environment variables from the OSX keychain ###
### Adapted from https://www.netmeister.org/blog/keychain-passwords.html ###
# Use: keychain-environment-variable SECRET_ENV_VAR
function keychain-environment-variable () {
    security find-generic-password -w -a ${USER} -D "environment variable" -s "${1}"
}

# Use: set-keychain-environment-variable SECRET_ENV_VAR
#   provide: super_secret_key_abc123
function set-keychain-environment-variable () {
    [ -n "$1" ] || print "Missing environment variable name"
# Note: if using bash, use `-p` to indicate a prompt string, rather than the leading `?`
read -s -p "Enter Value for ${1}: " secret
    ( [ -n "$1" ] && [ -n "$secret" ] ) || return 1
    security add-generic-password -U -a ${USER} -D "environment variable" -s "${1}" -w "${secret}"
}
