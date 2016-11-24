def my_sort unsorted
  sorted = [unsorted.pop]
  unsorted.each do |element_to_be_sorted|
    found = false
    sorted.each_with_index do |element_checking_against,index|
      if element_to_be_sorted.upcase <= element_checking_against.upcase
        sorted.insert(index,element_to_be_sorted)
        found = true
        break
      end
    end
    sorted << element_to_be_sorted unless found
  end
  sorted
end

def my_sort_recursive (unsorted,sorted = [])
  sorted << unsorted.pop if sorted.length == 0
  return sorted if unsorted.length == 0
  element_to_be_sorted = unsorted.pop
  found = false
  sorted.each_with_index do |element_checking_against,index|
    if element_to_be_sorted.upcase <= element_checking_against.upcase
      found = true
      sorted.insert(index,element_to_be_sorted)
      break
    end
  end
  unless found
    sorted << element_to_be_sorted
  end
  my_sort_recursive(unsorted,sorted) unless unsorted.length == 0
  sorted
end

num = my_sort_recursive ["z","a","b","B","c"]
num.each_with_index do |element,index|
  puts "#{index} : #{element}"
end
