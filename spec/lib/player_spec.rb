require './lib/scrabble/player'

describe Player do

  describe "class methods" do
    it "responds to 'new'" do
      expect(Player).to respond_to :new
    end
  end

  describe "instance methods" do
    describe "#plays" do
      it "array of words used by player" do
        kate = Player.new("Kate")
        kate.play("READ")

        expect(kate.plays).to eq ["READ"]
      end
    end

    describe "#total_score" do
      it "adds score of player words" do
        kate = Player.new("Kate")
        kate.play("READ")
        kate.play("DOG")

        expect(kate.total_score). to eq 10
      end
    end

    describe "#play(word)" do
      it "adds word to plays array" do
        expect(Player.new("Kate").play("READ")).to eq ["READ"]
      end
      # context "if player has 100 points or more" do
      #   it "returns false" do
      #     kate = Player.new("Kate")
      #     kate.plays = ["JESTER"]
      #
      #     expect(kate.play.to eq false
      #   end
      # end
    end

    describe "#won?" do
      it "returns true if #total_score >= 100" do
        kate = Player.new("Kate")
        kate.play("JESTERS")
        kate.play("MONSTERS")
        kate.play("ZEALOT")
        kate.play("QUEEN")
        kate.play("QUINTESSENTIAL")
        kate.play("JACKETS")
        kate.play("GENIUS")
        kate.play("GARDENER")
        kate.play("JOKERS")

        expect(kate.won?).to eq true
      end
    end
  end
end
