if test -z "$TMUX"
  tmux new-session -A -s default
end

set fish_greeting

set -g fish_user_paths "$HOME/.rbenv/shims" "/usr/local/bin" "/usr/local/sbin" $fish_user_paths
set -x EDITOR /usr/local/bin/nvim

status --is-interactive; and source (rbenv init -|psub)

if test -d ~/.config/fish/configs
  for config_file in ~/.config/fish/configs/*
    source $config_file
  end
end
