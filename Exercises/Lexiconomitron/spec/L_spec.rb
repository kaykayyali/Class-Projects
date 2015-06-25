require_relative("../lib/lexiconomitron.rb")

RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
  	before(:each) do
  		@lexi = Lexiconomitron.new
  	end
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
    it "    " do
    expect@lexi.shazam([“This”, “is”, “a”, “boring”, “test”]). to eq([“sih, “se”])

  end
end