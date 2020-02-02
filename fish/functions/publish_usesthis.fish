function publish_usesthis
  cd ~/dev/usesthis
  bundle exec dimples build
  bundle exec ./tasks/build_api
end
