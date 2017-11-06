alias cr='cd $(ghq root)/$(ghq list | peco)'
alias op='open https://$(ghq list | peco)'
alias gch='git checkout $(git branch -a | peco --prompt "GIT BRANCH" | head -n 1 | sed -e "s/^\*\s*//g")'
