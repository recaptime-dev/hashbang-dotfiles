#!/bin/zsh
################################################################################
# This file is sourced on all invocations of the shell.
# It is the 1st file zsh reads; it's read for every shell,
# even if started with -f (setopt NO_RCS), all other
# initialization files are skipped.
#
# This file should contain commands to set the command
# search path, plus other important environment variables.
# This file should not contain commands that produce
# output or assume the shell is attached to a tty.
#
# Notice: .zshenv is the same, execpt that it's not read
# if zsh is started with -f
#
# Global Order: zshenv, zprofile, zshrc, zlogin
################################################################################

source ~/.grml-etc-core/etc/zsh/zshenv
export GOROOT="$HOME/.local/share/go" GOPROXY=direct VISUAL=nano EDITOR=nano
export PATH="$GOROOT/bin:$HOME/.deno/bin:$HOME/.cargo/bin:$PATH" GOPATH="$GOROOT:/usr/share/go"

# Your custom things come here
