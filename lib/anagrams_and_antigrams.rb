class Words
  def initialize(word1, word2)
    @word1 = word1.downcase.chars.sort.join
    @word2 = word2.downcase.chars.sort.join
  end
  def anagram(word1, word2)
    if @word1.eql?(@word2)
      "These words are anagrams!"
    else
      "These words are NOT anagrams."
    end
  end

end