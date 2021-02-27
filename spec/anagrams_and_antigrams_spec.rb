require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Anagram#analyze') do
  it('Checks to see if inputted words are anagrams of each other') do
    input = Anagram.new()
    expect(input.analyze('listen', 'silent')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words are anagrams of each other despite differing cases') do
    input = Anagram.new()
    expect(input.analyze('Case', 'Aces')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words contain vowels') do
    input = Anagram.new()
    expect(input.analyze('ctnd', 'please use caution')).to(eq("You need to input actual words!"))
  end
  it('Checks to see if inputted words are antigrams (no letters match)') do
    input = Anagram.new()
    expect(input.analyze('lion', 'zebra')).to(eq("These words have no letter matches and are antigrams."))
  end
  describe('Words#actual_words') do
    it('Checks to see if inputted phrases are anagrams or antigrams') do
      input = Anagram.new()
      expect(input.actual_words('Astronomer', 'Moon Starer')).to(eq("These words all contain vowels!"))
    end
  end
end