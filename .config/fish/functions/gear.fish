function gear
  cd ~/Development/usesthis/gear
  fzf --preview="cat {}" --preview-window=right:60%:wrap --bind "enter:execute-silent(basename {} | sed 's/.json//' | pbcopy)"
  cd ~/Development/usesthis
end
