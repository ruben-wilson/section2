require 'make-snippet'


RSpec.describe "make_snippet" do
  it "returns one word" do
  result = make_snippet("word")
  expect(result).to eq "word"
  end

  it "returns 5 words for 5 input" do
  result = make_snippet("One two three four five")
  expect(result).to eq "One two three four five"
  end

  it "snips 6th word + adds ..." do
    result = make_snippet("One two three four five six")
    expect(result).to eq "One two three four five ..."
    end

    it "snips after 5 words + adds ..." do
      result = make_snippet("One two three four five six seven eight nine ten eleven twelve")
      expect(result).to eq "One two three four five ..."
      end

end


