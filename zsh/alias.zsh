# vim to neovim
if type "nvim" > /dev/null 2>&1; then
  alias vi="nvim"
  alias vim="nvim"
  alias view="nvim -R"
  alias vimdiff="nvim -d"
fi

# ghq + peco
alias cr='cd $(ghq root)/$(ghq list | peco --prompt "GIT REPOGITORY >")'
