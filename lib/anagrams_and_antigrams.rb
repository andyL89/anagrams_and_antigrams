class Anagram
  def initialize
    $result
  end
  def actual_words(str_1, str_2)
    each_word_1 = str_1.split(' ')
    each_word_2 = str_2.split(' ')
    if each_word_1.each.all?(/[aeiou]/) && each_word_2.each.all?(/[aeiou]/)
      $result = "These words all contain vowels!"
    else
      $result = "You need to input actual words!"
    end
    $result
  end
  def analyze(str_1, str_2)
    sorted_1 = str_1.delete("^a-zA-Z").downcase.chars.sort.join
    sorted_2 = str_2.delete("^a-zA-Z").downcase.chars.sort.join
    if sorted_1.eql?(sorted_2)
      $result = "These words are anagrams!"
    elsif sorted_1.each_char.none?(/[aeiou]/) || sorted_2.each_char.none?(/[aeiou]/)
      $result = "You need to input actual words!"
    elsif sorted_1.delete(sorted_2) == sorted_1
      $result = "These words have no letter matches and are antigrams."
    else
      $result = "These words are NOT anagrams."
    end
    $result
  end
end
