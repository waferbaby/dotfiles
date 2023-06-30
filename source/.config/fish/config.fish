set fish_greeting

fish_add_path ~/.rbenv/shims /usr/local/bin/ /opt/homebrew/bin/

set -x EDITOR /usr/bin/env nvim
set -x GPG_TTY (tty)

alias plug="cd ~/.dotfiles/nvim/lua/plugins && nvim ."

if status is-interactive
and not set -q TMUX
  tmux new -As0
end

if status is-interactive
  eval (ssh-agent -c) >> /dev/null
end

if test -d ~/.config/fish/conf.d
  for config_file in ~/.config/fish/conf.d/*
    source $config_file
  end
end
