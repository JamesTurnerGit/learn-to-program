def my_shuffle array # Magic style yo!
  new_array = [[],[],[],[],[],[],[]]
  array.sort
  until array.length <= 0 do
    for i in (0..6) do
      new_array[i] << array.pop
    end
  end
  new_array.shuffle.flatten.compact
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
