if status is-interactive
and not set -q TMUX
  exec tmux new -A -s "default"
end

set fish_greeting

set PATH /usr/local/bin/ ~/.rbenv/bin $PATH

set -x EDITOR /usr/bin/nvim
set -x FZF_DEFAULT_COMMAND "rg --files --follow --hidden --glob '!.git/*'"
set -x FZF_DEFAULT_OPTS "--reverse"

export SHELL=/bin/bash

if status is-interactive
  source (rbenv init -|psub)
  eval (ssh-agent -c) >> /dev/null
end

if test -d ~/.config/fish/configs
  for config_file in ~/.config/fish/configs/*
    source $config_file
  end
end
