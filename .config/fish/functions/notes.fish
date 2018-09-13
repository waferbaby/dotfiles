function notes 
  set source_directory $PWD
  cd ~/Documents/Notes
  nvim +":FZF"
  cd $source_directory
end
