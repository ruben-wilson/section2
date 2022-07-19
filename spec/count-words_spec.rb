require "count-words"

RSpec.describe "count_words" do 
  it "returns 0 when given empty string" do
    expect(count_words("")).to eq 0
  end
  it "returns 1 when given one word" do
    expect(count_words("foo")).to eq 1
  end
  it "returns 10 when given ten words" do
    expect(count_words("don't look back in anger i heard you say today")).to eq 10
  end
  
end