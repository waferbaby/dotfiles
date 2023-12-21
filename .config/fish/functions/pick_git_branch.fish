function pick_git_branch
  git branch -- | fzf --margin 15% --border | tr -d ' '
end
