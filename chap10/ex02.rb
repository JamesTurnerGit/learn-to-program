def my_sort array
  sorted = [array.pop]
  array.each do |element_to_be_sorted|
    sorted.each_with_index do |element_checking_against,index|
    if element_to_be_sorted.upcase <= element_checking_against.upcase
        sorted.insert(index,element_to_be_sorted,)
        break
      end
    end
  end
  sorted
end

num = my_sort ["a","B"]

num.each_with_index do |element,index|
  puts "#{index} : #{element}"
end
