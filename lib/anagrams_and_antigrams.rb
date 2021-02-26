class Words
  def anagram(word1, word2)
    sorted_1 = word1.downcase.chars.sort.join
    sorted_2 = word2.downcase.chars.sort.join
    if sorted_1.eql?(sorted_2)
      "These words are anagrams!"
    else
      "These words are NOT anagrams."
    end
  end
  def vowel_check(word)
    chars = 
  end
end