function gb
  if ! is_git_directory
    return
  end

  set branch $(pick_git_branch)

  if test -n "$branch"
    git checkout $branch
  end
end

function gbd
  if ! is_git_directory
    return
  end

  set branch $(pick_git_branch)

  if test -n "$branch"
    git branch -d $branch
  end
end

function is_git_directory
  test -d ".git"
end

function pick_git_branch
  git branch -- | fzf | tr -d ' '
end
