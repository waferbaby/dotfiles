function gbd
  if ! is_git_directory
    return
  end

  set branch $(pick_git_branch)

  if test -n "$branch"
    git branch -D $branch
  end
end
