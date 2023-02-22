set fish_greeting

fish_add_path /usr/local/bin/ /opt/homebrew/bin/ ~/.rbenv/bin source ~/.cargo/bin

set -x EDITOR /usr/bin/env nvim
set -x FZF_DEFAULT_COMMAND "rg --files --follow --hidden --glob '!.git/*'"
set -x FZF_DEFAULT_OPTS "--reverse"
set -x GPG_TTY (tty)

if status is-interactive
and not set -q TMUX
  exec tmux new -A -s "default"
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
