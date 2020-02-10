set fish_greeting

set PATH ~/.rbenv/bin $PATH

set -x EDITOR /usr/local/bin/nvim
set -x FZF_DEFAULT_COMMAND "rg --files --follow --hidden --glob '!.git/*'"
set -x FZF_DEFAULT_OPTS "--reverse"

status --is-interactive; and source (rbenv init -|psub)

eval (ssh-agent -c) >> /dev/null

if test -z $TMUX
  tmux new -A -s "default"
end

if test -d ~/.config/fish/configs
  for config_file in ~/.config/fish/configs/*
    source $config_file
  end
end
