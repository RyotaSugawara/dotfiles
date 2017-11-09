alias cr='cd $(ghq root)/$(ghq list | peco --prompt "GIT REPOGITORY >")'
alias op='open https://$(ghq list | peco --prompt "GIT REPOGITORY")'
alias gch='git checkout $(git branch | sed -e "s/^\*\s*//g" | awk "{print $1}" | peco --prompt "GIT BRANCH >")'
alias gcha='git checkout $(git branch -a | sed -e "s/^\*\s*//g" | grep -v "HEAD" | awk "{print $1}" | peco --prompt "GIT BRANCH >")'
