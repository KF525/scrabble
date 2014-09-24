class Player
  attr_accessor :name

  def initialize(name)
    @name = name
    @word_array = []
    @total = 0
  end

  def total_score
    Scrabble.score_words(@word_array).collect do |key, value|
      @total += value
    end
    @total
  end

  def plays
    @word_array
  end

  def play(word)
    @word_array<<(word.upcase)
  end

  def won?
    if @total >= 100
      true
    else
      puts @total
    end
  end
end
