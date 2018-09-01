function gear
  cd ~/Development/usesthis/gear
  fzf --preview="cat {}" --preview-window=right:60%:wrap
  cd ~/Development/usesthis
end
