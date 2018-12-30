set fish_color_cwd ffffff
set fish_color_command ffffff
set fish_color_param ffffff
set fish_color_user 9E5CED
set fish_color_host EEEEEE --underline

function fish_prompt
  set last_status $status

  printf '⚡ ️ '
  set_color $fish_color_user
  printf '%s' (whoami)
  set_color normal
  printf '@'
  set_color $fish_color_host
  printf '%s' (hostname|cut -d . -f 1)
  set_color normal
  set_color $fish_color_cwd
  printf ' %s' (prompt_pwd)
  printf '%s ' (__fish_git_prompt)
end
