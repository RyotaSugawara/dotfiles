alias cr='cd $(ghq root)/$(ghq list | peco)'
alias op='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
