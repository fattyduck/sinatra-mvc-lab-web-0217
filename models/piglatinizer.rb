require 'pry'
class PigLatinizer


  def vowel_first?word
    ['a','e','i','o','u','A','E','I','O','U'].include?(word[0])
  end

  def to_pig_latin(phrase)
    array = phrase.split(" ")
    array.map! do |word|
      word = piglatinize(word)
    end
    array.join(" ")
  end

  def piglatinize(word)
    return vowel_word(word) if vowel_first?(word)
    constant_word(word)
  end

  def vowel_word(word)
    word += "way"
  end

  def constant_word(word)
    while !vowel_first?(word)
      word += word[0]
      word[0]  = ""
    end
    word += "ay"
  end


end
