###ZSH CONFIG###

# PROMPT
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# TERM
export TERM=xterm-256color

# AUTOSUGGESTIONS
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# AUTOCOMPLETE
# source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# SYNTAX HIGHLIGHTING
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh/.history

# ALIASES
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ls="lsd" # Package lsd must be installed
alias i3config="vim .config/i3/config"
alias bspwmconfig="vim .config/bspwm/bspwmrc"
alias sxhkdconfig="vim .config/sxhkd/sxhkdrc"
alias polybarconfig="vim .config/polybar/config.ini"
alias zshconfig="vim .config/zsh/.zshrc"
alias roficonfig="vim .config/rofi/config.rasi"
alias alacrittyconfig="vim .config/alacritty/alacritty.yml"
alias picomconfig="vim .config/picom/picom.conf"
alias dunstconfig="vim .config/dunst/dunstrc"
alias conkyconfig="vim .config/conky/conky.conf"
alias spotifydconfig="vim .config/spotifyd/spotifyd.conf"
alias clock="tty-clock -C 4 -c"
alias cmatrix="cmatrix -C blue"
