class Scrabble
  LETTER_HASH = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1, "R"=>1,
  "S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "C"=>3, "M"=>3, "P"=>3, "F"=>4, "H"=>4,
  "V"=>4, "W"=>4, "Y"=>4, "K"=>5, "J"=>8, "X"=>8, "Q"=>10, "Z"=>10}

  @@word_totals = {}


  def self.split(word)
    word.upcase.split(//)
  end

  def self.score(word)
    total = 0

    split(word).collect do |letter|
      total += LETTER_HASH[letter]
    end
    total
  end

  def self.add_words(array_of_words)
    array_of_words.collect do |word|
      total = 0
      @@world_totals = {}
      word.upcase.split(//).collect do |letter|
        total += LETTER_HASH[letter]
      end
      @@word_totals[word]= total
    end
  end

  def self.highest_score_from(array_of_words)
    add_words(array_of_words)

    @@word_totals.sort_by{|k,v| v}.last.first
  end
end

#need to do something about WORD TOTALS constant
