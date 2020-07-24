source $ZDOTDIR/scripts/git-prompt.sh
fpath=($ZDOTDIR/prompts/ $fpath)

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v  # vi keybinding (-e for emac | -v for vi)
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shocker/.config/zsh/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

function yta() {
    mpv --ytdl-format=bestaudio ytdl://ytsearch:"$*"
}

prompt igloo
