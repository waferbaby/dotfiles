set fish_greeting

fish_add_path ~/.local/bin /usr/local/bin/ /opt/homebrew/bin/

set -x EDITOR /usr/bin/env nvim
set -x RIPGREP_CONFIG_PATH ~/.ripgreprc
set -x GPG_TTY (tty)

alias bx="bundle exec"
alias bxr="bx rails"
alias bxrs="bx rspec"
alias bxrc="bxr c"

if status is-interactive
and not set -q TMUX
  tmux new -As0
end

if status is-interactive
  eval (ssh-agent -c) >> /dev/null
  ~/.local/bin/mise activate fish | source
end

if test -d ~/.config/fish/conf.d
  for config_file in ~/.config/fish/conf.d/*
    source $config_file
  end
end
