# vim to neovim
if type "nvim" > /dev/null 2>&1; then
  alias vim='nvim'
fi

# ghq + peco
alias cr='cd $(ghq root)/$(ghq list | peco --prompt "GIT REPOGITORY >")'
