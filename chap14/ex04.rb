$log_depth = 0

def log block_description, &block
  spacing = "  "
  puts "#{spacing * $log_depth}Beggining #{block_description}..."
  $log_depth += 1
  result = block.call
  result ||= "nil"
  puts "#{spacing * $log_depth}...#{block_description} finished, returning: \"#{result}\""
  $log_depth -= 1
end
