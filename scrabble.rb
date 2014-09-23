class Scrabble
  LETTER_HASH = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1, "R"=>1,
  "S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "C"=>3, "M"=>3, "P"=>3, "F"=>4, "H"=>4,
  "V"=>4, "W"=>4, "Y"=>4, "K"=>5, "J"=>8, "X"=>8, "Q"=>10, "Z"=>10}

  @@word_totals = {}
  @@winner_key_num = 6
  @@winner_key = nil


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

  def self.score_words(array_of_words)
    array_of_words.collect do |word|
      @@world_totals = {}
      total= score(word)
      @@word_totals[word]= total
    end
    score_compare
  end

  def self.score_compare
     winner_value = 0

     @@word_totals.each do |key, value|
       #if value in hash is larger than current winner_value
       if value > winner_value
         winner_value = value
         @@winner_key = key
       #if word length in hash is not 7 and current word length is not 7
       #and word length in hash is shorter and value is greater or equal to current winner_value
       elsif key.length != 7 && @@winner_key.length != 7 && @@winner_key.length > key.length && value >= winner_value
         winner_value = value
         @@winner_key = key
       #if word length in hash is 7 and value is greater or equal to current winner_value
       elsif key.length == 7 && value >= winner_value
         winner_value = value
         @@winner_key = key
       end
       @@word_totals = {}
     end
  end

  def self.highest_score_from(array_of_words)
    score_words(array_of_words)

    return @@winner_key
  end
end
