function gource
  /usr/bin/env gource --seconds-per-day 0.1 -a 1 --hide filenames -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset fast -crf 18 -threads 0 -bf 0 -pix_fmt yuv420p -movflags +faststart output.mp4
end
