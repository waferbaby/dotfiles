function interview
  cd ~/Development/usesthis

  set upcoming_file ~/Documents/Notes/Projects/Uses\ This/Upcoming.txt
  set temp_file /tmp/usesthis-upcoming-(date "+%Y-%m-%d").txt
  set next_interviewee (sed -n '3p' $upcoming_file)
  
  sed '3d' $upcoming_file > $temp_file
  mv $temp_file $upcoming_file

  echo $next_interviewee
  ./tasks/interview $next_interviewee
end
