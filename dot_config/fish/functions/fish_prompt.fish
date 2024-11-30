set fish_color_branch aaaaaa
set fish_color_cwd 33ccff
set fish_color_host eeeeee
set fish_color_user 9e5ced

function fish_prompt
  set last_status $status

  set_color $fish_color_user
  printf '%s' (whoami)
  set_color normal
  printf '@'
  set_color $fish_color_host
  printf '%s ' (cat /etc/hostname)
  set_color normal
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color $fish_color_branch
  printf '%s' (__fish_git_prompt)
  set_color normal
  printf ' > '
end
