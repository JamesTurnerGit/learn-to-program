def profile block_description, &block
  profiling = true
  start_time = Time.new
  block.call
  return unless profiling
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number.
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
