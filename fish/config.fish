set fish_greeting

fish_add_path /usr/local/bin/ /opt/homebrew/bin/ ~/.asdf/shims

set -x EDITOR /usr/bin/env nvim
set -x FZF_DEFAULT_COMMAND "rg --files --hidden --follow --glob '!.git'"
set -x FZF_DEFAULT_OPTS "--reverse"
set -x GPG_TTY (tty)

if status is-interactive
and not set -q TMUX
  tmux new -As0
end

if status is-interactive
  source ~/.asdf/asdf.fish
  eval (ssh-agent -c) >> /dev/null
end

if test -d ~/.config/fish/conf.d
  for config_file in ~/.config/fish/conf.d/*
    source $config_file
  end
end
