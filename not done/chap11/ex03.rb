def my_shuffle array
  array.shuffle()
end
#Build your own playlist.

#get songs
files  = Dir["C:/music/*.mp3"]
files |= []
#shuffle
playlist = my_shuffle(files)
playlist.join("\n")
#save out
file_name = "playlist.m3u"
file = File.new(file_name,"w+")
file.write(playlist)
file.close
