#!/usr/bin/env ruby
require('./lib/anagrams_and_antigrams')
puts
puts "Hey there! Wanna test my anagram analyzing skills?"
loop do
puts "Enter a word or phrase, and then another."
puts "If they contain the same letters, that means they're anagrams!"
puts "If they have zero matching letters, that means they're antigrams!"
input =  Anagram.new
  input.analyze(gets, gets)
  puts "I'm thinking..."
  sleep 2
  puts "#{$result}"
  sleep 2
  puts "How about another? y/n"
  user_answer = gets.chomp.downcase()
  if user_answer != 'y'
    puts "That's okay! I'll be here if you wanna anagram again!"
    break
  end
end