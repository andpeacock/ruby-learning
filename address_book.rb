require 'address_entry'


File.open('book.txt') do |file|
	count = file.readlines.size
	puts count
end


#entries = gets.to_i
#book = Array.new
#entries.times do
#	book << AddressEntry.new(gets, gets)
#end

#File.open('output.txt', 'w') do |file|
#	book.each_index do |i|
#		file.puts book[i].name
#		file.puts book[i].address
#		puts "#{i} Name: #{book[i].name.chop}"
#	end
#end
