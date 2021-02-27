require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Words#anagram') do
  it('Checks to see if inputted words are anagrams of each other') do
    @words = Words.new()
    expect(@words.anagram('listen', 'silent')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words are anagrams of each other despite differing cases') do
    @words = Words.new()
    expect(@words.anagram('Case', 'Aces')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if inputted words contain vowels') do
    @words = Words.new()
    expect(@words.anagram('ctnd', 'please use caution')).to(eq("You need to input actual words!"))
  end
  it('Checks to see if inputted words are antigrams (no letters match)') do
    @words = Words.new()
    expect(@words.anagram('lion', 'zebra')).to(eq("These words have no letter matches and are antigrams."))
  end
  describe('Words#phrase') do
    it('Checks to see if inputted phrases are anagrams or antigrams') do
      @words = Words.new()
      expect(@words.phrase('Astronomer', 'Moon Star')).to(eq("These phrases are anagrams!"))
    end
  end
end