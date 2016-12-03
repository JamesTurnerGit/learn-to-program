def repeat &block
  hours = Time.now.strftime("%H").to_i
  hours.times{block.call}
end

repeat do
  puts "bonng! "
end
