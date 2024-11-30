function pick_git_branch
  git branch --sort=-committerdate -- | fzf --margin 15% --border -m | tr -d ' '
end
