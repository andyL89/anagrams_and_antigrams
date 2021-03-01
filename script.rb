#!/usr/bin/env ruby
require('./lib/anagrams_and_antigrams')
puts
puts "Hey there! Wanna test my anagram analyzing skills?"
sleep 2.5
loop do
puts "Enter a word or phrase, and then another."
sleep 2.5
puts "If they contain all the same letters, that means they're anagrams!"
sleep 2.5
puts "If they have zero matching letters, that means they're antigrams!"
sleep 2.5
puts "Go ahead, I'm ready!"
input =  Anagram.new
  input.analyze(gets, gets)
  puts "I'm thinking..."
  sleep 2
  puts "#{$result}"
  sleep 1.5
  puts "How about another? y/n"
  user_answer = gets.chomp.downcase()
  if user_answer != 'y'
    puts "That's okay! I'll be here if you wanna anagram again!"
    break
  end
end