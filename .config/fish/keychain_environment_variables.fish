# Functions for setting and getting environment variables from the macOS keychain

# Use: keychain-environment-variable KEY_NAME
function keychain-environment-variable -d "Read an environment variable from the keychain"
  security find-generic-password -w -a $USER -D "environment variable" -s "$argv[1]"
end

# Use: set-keychain-environment-variable KEY_NAME "secret"
function set-keychain-environment-variable
  if begin; test (count $argv) -eq 2; end
    security add-generic-password -U -a $USER -D "environment variable" -s "$argv[1]" -w "$argv[2]"
  else
    echo "Usage: set-keychain-environment-variable <env-name> <value>"
  end
end

function set-chime-aws-env -d "Set AWS environment variables from keychain"
	set -gx AWS_ACCESS_KEY_ID (keychain-environment-variable CHIME_AWS_CLI_KEY)
	set -gx AWS_SECRET_ACCESS_KEY (keychain-environment-variable CHIME_AWS_CLI_SECRET)
end

function set-stacksift-aws-env -d "Set AWS environment variables from keychain"
	set -gx AWS_ACCESS_KEY_ID (keychain-environment-variable STACKSIFT_AWS_CLI_KEY)
    set -gx AWS_SECRET_ACCESS_KEY (keychain-environment-variable STACKSIFT_AWS_CLI_SECRET)
end

function unset-aws-env -d "Unset AWS environment variables"
	set -ge AWS_ACCESS_KEY_ID
	set -ge AWS_SECRET_ACCESS_KEY
end
