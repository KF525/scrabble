require './lib/scrabble/scrabble'

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
    context "if top scores same length" do
      it "choose first word" do
        expect(Scrabble.highest_score_from(["CASE", "CALL"])).to eq "CASE"
      end
    end
    context "if top scores are tied" do
      it "choose shortest word if no seven-letter words" do
        expect(Scrabble.highest_score_from(["JETS", "MAKER"])).to eq "JETS"
      end
      it "choose seven-letter word" do
        expect(Scrabble.highest_score_from(["BLIGHTS", "JESTER"])).to eq "BLIGHTS"
      end
    end
  end
end
