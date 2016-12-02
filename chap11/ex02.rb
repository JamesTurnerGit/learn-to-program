def my_shuffle array
  return array if array.nil?
  new = []
  while array.length > 0
    element_index = rand(0..array.length-1)
    new << array[element_index]
    array.delete_at(element_index)
  end
  new
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
