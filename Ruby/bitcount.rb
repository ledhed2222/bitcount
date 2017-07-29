def main
	if ARGV.length < 1
		puts "You must enter a number!"
		return
	end
	input = ARGV[0]
	input = Integer(input) rescue nil
	if input.nil?
		puts "#{ARGV[0]} is not a number!"
	else
		puts bitcount(input)
	end
end

def bitcount(input)
	output = 0
	32.times do
		output += 1 if (input & 1) == 1
		input = input >> 1
	end
	output
end

main()
