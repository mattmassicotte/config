# Functions for setting and getting environment variables from the macOS keychain

# Use: keychain-environment-variable CHEF_PUSH_KEY
function keychain-environment-variable -d "Read an environment variable from the keychain"
  security find-generic-password -w -a $USER -D "environment variable" -s "$argv[1]"
end

# Use: set-keychain-environment-variable CHEF_PUSH_KEY "secret"
function set-keychain-environment-variable
  if begin; test (count $argv) -eq 2; end
    security add-generic-password -U -a $USER -D "environment variable" -s "$argv[1]" -w "$argv[2]"
  else
    echo "Usage: set-keychain-environment-variable <env-name> <value>"
  end
end
