if test -z "$TMUX"
  tmux new-session -A -s default
end

set fish_greeting

set -Ux fish_user_paths $HOME/.rbenv/bin $HOME/.rbenv/shims $fish_user_paths

set -x EDITOR /usr/local/bin/nvim
set -x FZF_DEFAULT_COMMAND "rg --files --hidden --glob '!.git/*'"
set -x FZF_DEFAULT_OPTS "--reverse"

status --is-interactive; and source (rbenv init -|psub)

if test -d ~/.config/fish/configs
  for config_file in ~/.config/fish/configs/*
    source $config_file
  end
end