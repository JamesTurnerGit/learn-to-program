def log block_description, &block
  puts "Beggining #{block_description}..."
  result = block.call
  result ||= "nil"
  puts "...#{block_description} finished, returning: \"#{result}\""
end
