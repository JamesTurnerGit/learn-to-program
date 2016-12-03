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

# puts my_shuffle ["test", "test","thing"]
