require './scrabble'

describe Scrabble do

  describe "class methods" do
    it "responds to 'score'" do
      expect(Scrabble).to respond_to :score
    end
    it "returns total value for word" do
      expect(Scrabble.score("READ")).to eq 5
    end

    it "responds to 'split word'" do
      expect(Scrabble).to respond_to :split
    end
    it "turns word into an array of strings" do
      expect(Scrabble.split("READ")).to eq ["R", "E", "A", "D"]
    end
    it "turns lower case word into upcase string array" do
      expect(Scrabble.split("read")).to eq ["R", "E", "A", "D"]
    end

    it "responds to 'highest_score_from'" do
      expect(Scrabble).to respond_to :highest_score_from
    end
    it "returns word with highest score" do
      expect(Scrabble.highest_score_from(["READ", "EAR"])).to eq "READ"
    end
    context "if top scores are tied" do
      it "choose shortest word" do
        expect(Scrabble.highest_score_from(["JETS", "MAKER"])).to eq "JETS"
      end
    end
    # context "if top scores are tied, choose fewest tiles" do
    #   expect(Scrabble.highest_score_from(["READ", "PET"])).to eq "PET"
    # end
    # context "unless one uses all seven tiles" do
    # end
    # context "if multiple have same score and length, go with first" do
    # end
  end
end
