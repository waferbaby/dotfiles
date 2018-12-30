function interview
  cd ~/Development/usesthis

  set upcoming_file ~/Documents/Notes/Projects/Uses\ This/Upcoming.txt
  set temp_file /tmp/usesthis-upcoming-(date "+%Y-%m-%d").txt
  set next_interviewee (sed -n '1p' $upcoming_file)
  
  sed '1d' $upcoming_file > $temp_file
  mv $temp_file $upcoming_file

  echo "Interviewing $next_interviewee..."

  ./tasks/interview "$next_interviewee"
end
