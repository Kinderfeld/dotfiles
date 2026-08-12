#
# Kinderfeld's `~/.bashrc`:
#
# Copyright 2026 kinderfeld
#
# Redistribution and use in source and binary forms, with or without 
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS”
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
# POSSIBILITY OF SUCH DAMAGE.

#
# If not running interactively, don't do anything:
#
[[ $- != *i* ]] && return

#
# Print OS info at the beginning:
#
if [[ -x "/usr/bin/pfetch" ]]
then
    pfetch
fi

#
# Global variables:
#
declare GREEN
declare RESET
declare PS1
declare OS

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="$ ${GREEN}\w -> ${RESET}"
OS="artix" # devuan, freebsd

#
# Exporting:
#
# export $(dbus-launch)
# export MANPAGER="less"
export MANPAGER="nvim +Man!"
# export EDITOR="vim"
export EDITOR="nvim"
export HISTCONTROL="ignoredups:erasedups"
export NO_AT_BRIDGE="1"

#
# Aliases:
#

##
## Coreutils aliases:
##
alias e="exit"
alias h="history"
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls --color=always --group-directories-first"
alias rm="rm -I --preserve-root"

##
## .bashrc aliases:
##
alias bed="nvim ~/.bashrc"
alias apply="source ~/.bashrc"

##
## Other aliases:
##
alias v="nvim"
# alias v="vim"
alias sudo="doas"
alias htop="htop -t"
alias wgvpn="doas resolvconf -u && doas wg-quick up wg0"
alias weather="curl http://wttr.in"
alias crypto="curl http://rate.sx"

if [[ "${OS}" = "artix" ]]
then
    alias upd="doas pacman -Syu && trizen -Syu && flatpak update"
    alias unlock="doas rm /var/lib/pacman/db.lck"
elif [[ "${OS}" = "devuan" ]]
then
    alias upd="apt update && apt upgrade && flatpak update"
elif [[ "${OS}" = "freebsd" ]]
then
    alias upd="pkg update && pkg upgrade"
fi

#
# Shell options:
#
shopt -s no_empty_cmd_completion
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s direxpand
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -s expand_aliases
shopt -s checkwinsize
shopt -s hostcomplete
