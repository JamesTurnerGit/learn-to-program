lw = 78
contents =[["Getting Started", " 1"],
		  ["Numbers",            " 9"],
		  ["Letters",            "13"]]

puts "Table of Contents".center(lw)

contents.each_with_index do |chapter,index|
	puts "Chapter #{index + 1}:  #{chapter[0]}".ljust(lw/2) + "page #{chapter[1]}".rjust(lw/2)
end
