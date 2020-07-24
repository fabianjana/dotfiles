export VISUAL=nvim
export EDITOR=nvim
export TERMINAL=kitty

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi