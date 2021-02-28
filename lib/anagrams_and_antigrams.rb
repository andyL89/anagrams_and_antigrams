class Anagram

  def initialize
    $result
  end

  def analyze(str_1, str_2)
    each_word_1 = str_1.downcase.delete("^\sa-z").split(' ')
    each_word_2 = str_2.downcase.delete("^\sa-z").split(' ')
    sorted_1 = str_1.downcase.delete("^a-z").chars.sort.join
    sorted_2 = str_2.downcase.delete("^a-z").chars.sort.join

    if !each_word_1.each.all?(/([aeiou])/) || !each_word_2.each.all?(/([aeiou])/)
      $result = "You need to input actual words!"
    elsif sorted_1.eql?(sorted_2)
      $result = "All letters match, so that's an anagram!"
    elsif sorted_1.delete(sorted_2) == sorted_1
      $result = "These words have no letter matches, so that's an antigram."
    else
      $result = "Not all letters match, so that's not an anagram."
    end
    $result
  end
end
