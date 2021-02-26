require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Words#anagram') do
  it('Checks to see if 2 words are anagrams of each other') do
    @words = Words.new()
    expect(@words.anagram('tea', 'eat')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if 2 words are anagrams of each other despite differing cases') do
    @words = Words.new()
    expect(@words.anagram('Tea', 'Eat')).to(eq("These words are anagrams!"))
  end
end