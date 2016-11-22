#!/bin/bash

set -u -o pipefail
set -x

ln -s "${PWD}/.gemrc" "${HOME}/.gemrc"

ln -s "${PWD}/.gitconfig" "${HOME}/.gitconfig"
ln -s "${PWD}/.gitignore_global" "${HOME}/.gitignore_global"

mkdir -p "${HOME}/.ssh"
ln -s "${PWD}/.ssh/config" "${HOME}/.ssh/config"

mkdir -p "${HOME}/.config"
ln -s "${PWD}/.config/fish" "${HOME}/.config/fish"

ln -s "${PWD}/.bashrc" "${HOME}/.bashrc"

mkdir -p "${HOME}/.rbenv/bin"
mkdir -p "${HOME}/.rbenv/shims"
