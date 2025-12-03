function pick_git_branch
  git branch --sort=-committerdate -- | fzf --tmux --margin 15% --border -m | tr -d ' '
end
