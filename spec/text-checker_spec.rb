require "text-checker.rb"

RSpec.describe "text_checker" do
  it "returns 'bad grammar' for sentance with no punctuation 
      at end of text" do 
        result = text_checker("hi mom")
        expect(result).to eq "bad grammar!"
      end
    it "returns 'well written text!' when sentances is ended 
    with full stop " do 
      expect(text_checker("Hi mom.")).to eq "well written text!"
    end 
    it "returns 'well written text!' when sentances is ended 
    with ! " do 
      expect(text_checker("Hi mom!")).to eq "well written text!"
    end 
    it "returns 'well written text!' when sentances is ended 
    with ? " do 
      expect(text_checker("Hi mom?")).to eq "well written text!"
    end 
    it "returns 'bad grammar!' when sentances doesnt have capital at 
    start of sentance. " do 
      expect(text_checker("hi mom?")).to eq "bad grammar!"
    end 



end