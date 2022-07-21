require "grammar-stats.rb"

RSpec.describe "check" do
  it "returns false if string doesn't start with capital" do
    grammar = GrammarStats.new
    expect(grammar.check("hi.")).to eq false
  end
  it "returns false if string doesn't end with punctuation" do
    grammar = GrammarStats.new
    expect(grammar.check("Hi")).to eq false
  end
  it "returns true if text has both capital and correct punctuation" do
    grammar = GrammarStats.new
    expect(grammar.check("Hi?")).to eq true
  end
  it "returns 9 for 90% when called 10 times with one incorrect
      text " do
    grammar = GrammarStats.new
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("hi.")
    expect(grammar.percentage_good).to eq 9
  end
  it "returns 1 for 100% when called 5 times with no incorrect
      text " do
    grammar = GrammarStats.new
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    expect(grammar.percentage_good).to eq 0
  end
  it "returns 8 for 80% when called 5 times with one incorrect
  text " do
    grammar = GrammarStats.new    
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi.")
    grammar.check("Hi")
  expect(grammar.percentage_good).to eq 8
end
end
