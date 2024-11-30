function gb
  if ! is_git_directory
    return
  end

  set branch $(pick_git_branch)

  if test -n "$branch"
    git checkout $branch
  end
end
