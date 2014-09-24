require './lib/scrabble/player'

describe Player do

  describe "class methods" do
    it "responds to 'new'" do
      expect(Player).to respond_to :new
    end
  end

  #look into agrument issue
  describe "instance methods" do
    describe "#total_score" do
      it "adds score of player words" do
        expect(Player.new("Kate").total_score(["READ", "DOG"])). to eq 10
      end
    end

    #look into agrument issue
    describe "#plays" do
      it "array of words used by player" do
        expect(Player.new("Kate").plays(["READ"])).to eq ["READ"]
      end
    end

    describe "#play(word)" do
      it "adds word to plays array" do
        expect(Player.new("Kate").play("READ")).to eq ["READ"]
      end
      context "if player has 100 points or more" do
        expect(Player.new("Kate").play("READ")).to eq false
      end
    end

  # describe "#won?" do
  #   it "returns true if #total_score >= 100" do
  #     expect(Player.new(name).won?(["JESTER", "MARKETS", "GROWING", "JOKERS", ])).to eq true
  #   end
  # end
  end
end
