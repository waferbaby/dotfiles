function gear
  cd ~/dev/usesthis/gear
  fzf -e --preview="cat {}" --preview-window=top:60%:wrap --bind "enter:execute-silent(basename {} | sed 's/.json//' | tr -d '\n' | pbcopy)"
  cd ~/dev/usesthis
end