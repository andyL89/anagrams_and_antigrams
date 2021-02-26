require('rspec')
require('pry')
require('anagrams_and_antigrams')

describe('Words#anagram') do
  it('Checks to see if 2 words are anagrams of each other') do
    @words = Words.new()
    expect(@words.anagram('listen', 'silent')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if 2 words are anagrams of each other despite differing cases') do
    @words = Words.new()
    expect(@words.anagram('Case', 'Aces')).to(eq("These words are anagrams!"))
  end
  it('Checks to see if anagram words both contain vowels') do
    @words = Words.new()
    expect(@words.anagram('auctioned', 'cautioned')).to(eq("These words are anagrams!"))
  end
end