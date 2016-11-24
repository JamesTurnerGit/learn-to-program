def my_shuffle array
  new = []
  while array.length > 0
    element_index = rand(0..array.length-1)
    new << array[element_index]
    array.delete_at(element_index)
  end
  new
end

# puts my_shuffle ["test", "test","thing"]
