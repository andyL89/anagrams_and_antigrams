class Words
  def anagram(str_1, str_2)
    each_word_1 = str_1.split(' ')
    each_word_2 = str_2.split(' ')
    sorted_1 = str_1.delete("^a-zA-Z").downcase.chars.sort.join
    sorted_2 = str_2.delete("^a-zA-Z").downcase.chars.sort.join
    if sorted_1.eql?(sorted_2)
      "These words are anagrams!"
    elsif sorted_1.each_char.none?(/[aeiou]/) || sorted_2.each_char.none?(/[aeiou]/)
      "You need to input actual words!"
    elsif sorted_1.delete(sorted_2) == sorted_1
      "These words have no letter matches and are antigrams."
    else
      "These words are NOT anagrams."
    end
  end
  def phrase(str_1, str_2)
    each_word_1 = str_1.split(' ')
    each_word_2 = str_2.split(' ')
    sorted_1 = str_1.delete("^a-zA-Z").downcase.chars.sort.join
    sorted_2 = str_1.delete("^a-zA-Z").downcase.chars.sort.join
    if each_word_1.each.all?(/[aeiou]/) && each_word_2.each.all?(/[aeiou]/)
      "These phrases are anagrams!"
    else
      "You need to input actual words!"
    end
  end
end
# def antigram(word1, word2)
#   if word1.delete(word2) == word1
#     "These words have no letter matches and are antigrams."
#   else
#     "These words share at least one letter."
#   end
# end

def vowel_check(word)
  is_word = false
  if word.each_char.any?(/[aeiou]/)
    is_word = true
  else
    is_word = false
  end
  is_word
end