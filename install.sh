#!/bin/bash

set -u -o pipefail
set -x

if [ ! -f install.sh ]; then
	echo "Run this from the config directory"
	exit 1
fi

ln -s "${PWD}/.gemrc" "${HOME}/.gemrc"

ln -s "${PWD}/.gitconfig" "${HOME}/.gitconfig"
ln -s "${PWD}/.gitignore_global" "${HOME}/.gitignore_global"
ln -s "${PWD}/.gitattributes" "${HOME}/.gitattributes"

mkdir -p "${HOME}/.ssh"
ln -s "${PWD}/.ssh/config" "${HOME}/.ssh/config"

mkdir -p "${HOME}/.config"
ln -s "${PWD}/.config/fish" "${HOME}/.config/fish"

ln -s "${PWD}/.bashrc" "${HOME}/.bashrc"
ln -s "${PWD}/.bash_profile" "${HOME}/.bash_profile"

mkdir -p "${HOME}/.bundle"
ln -s "${PWD}/.bundle/config" "${HOME}/.bundle/config"

ln -s "${PWD}/.lldbinit" "${HOME}/.lldbinit

mkdir -p "${HOME}/.rbenv/bin"
mkdir -p "${HOME}/.rbenv/shims"
