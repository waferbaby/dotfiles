function notes -a 'note_name'
  set source_directory $PWD
  cd ~/Documents/Notes
  nvim +":FZF"
  cd $source_directory
end
