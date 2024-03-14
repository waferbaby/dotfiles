function pick_git_branch
  git branch --sort=-committerdate -- | fzf --margin 15% --border | tr -d ' '
end
