require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Anagram#analyze') do
  it('Checks to see if inputted words are anagrams of each other') do
    input = Anagram.new()
    expect(input.analyze('listen', 'silent')).to(eq("All letters match, so that's an anagram!"))
  end
  it('Checks to see if inputted words are anagrams of each other despite differing cases') do
    input = Anagram.new()
    expect(input.analyze('Case', 'Aces')).to(eq("All letters match, so that's an anagram!"))
  end
  it('Checks to see if inputted words are antigrams (no letters match)') do
    input = Anagram.new()
    expect(input.analyze('lion', 'zebra')).to(eq("These words have no letter matches, so that's an antigram."))
  end
  it('Checks to see if phrases are anagrams despite special characters and spaces') do
    input = Anagram.new()
    expect(input.analyze("Boasting?", "It's no gab!")).to(eq("All letters match, so that's an anagram!"))
  end
  it('Checks to see if inputted phrases are anagrams or antigrams') do
    input = Anagram.new()
    expect(input.analyze('actual words', 'hjkgh Star')).to(eq("You need to input actual words!"))
  end
  it('Checks to see if words/phrases are palindromes') do
    input = Anagram.new()
    expect(input.analyze("Go hang a salami", "I'm a lasagna hog.")).to(eq("These words are spelled the same forwards and backwards, that's a palindrome!"))
  end
end