#!/usr/bin/env ruby
def main
  if ARGV.empty?
    puts "You must enter a number!"
    exit 1
  end

  input = parse(ARGV[0])
  if input.nil?
    puts "#{ARGV[0]} is not a number!"
    exit 1
  end

  puts bitcount(input)
end

def parse(argument)
  Integer(argument)
rescue ArgumentError
end

def bitcount(input)
  32.times.map do |i|
    ((input >> i) & 1) == 1 ? 1 : 0
  end.sum
end

main

