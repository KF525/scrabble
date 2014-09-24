class Player
  attr_accessor :name

  def initialize(name)
    @name = name
    @word_array = []
  end

  def total_score
    total = 0

    Scrabble.score_words(@word_array).collect do |key, value|
      total += value
    end
    total
  end

  def plays
    @word_array
  end

  def play(word)
    @word_array<<(word)
  end

  # def won?
  #   if total_score >= 100
  #     true
  #   end
  # end
end
