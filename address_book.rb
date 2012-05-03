require_relative 'address_entry'

$book = Array.new
cs = {
  'list' => -> {List()},
	'write'=> -> {Write()},
  'exit' => -> {Exit()},
	'remove' => ->{Remove()}
}

#This reads file
File.open('book.txt') do |f|
  count = f.gets.chop.to_i
  count.times do
    $book << AddressEntry.new(f.gets.delete("\n"), f.gets.delete("\n"))
  end
end

def Add 
	print "Enter your full name: "
	name = gets.chop
	print "Enter your address: "
	addr = gets.chop
	$book << AddressEntry.new(name, addr)
end

def List
  $book.each_index do |entry|
    puts "#{entry}: #{$book[entry].name} -- #{$book[entry].address}"
  end
end

def Exit
  Process.exit
end

def Write
		File.open('out.txt', 'w') do |f|
			$book.each do |entry|
				f.puts entry.name
				f.puts entry.address
			end
		end
		puts "Saved Address Book Successfully!"
end

#MAIN
while true
  print "Command?: "
  com = gets.chop.downcase
  cs[com].call
end
