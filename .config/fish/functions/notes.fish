function notes -a 'note_name'
  set source_directory $PWD
  cd ~/Documents/Notes

  if test -n "$note_name"
    nvim +":Note $note_name"
  else
    nvim +":FZF"
  end

  cd $source_directory
end
