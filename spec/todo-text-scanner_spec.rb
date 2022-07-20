require "todo-text-scanner.rb"

RSpec.describe "text_scanner" do 
  it "returns 'yes this is a todo' if the input string has '#Todo' inside of it" do 
    expect(text_scanner("#Todo move house!")).to eq "yes this is a todo"
  end
  it "returns 'no this is not' if the input string has no '#Todo' inside of it" do 
    expect(text_scanner("move house!")).to eq "no this is not"
  end
  it "returns 'yes this is a todo' if the input string has a '#todo' inside of it" do 
    expect(text_scanner("#todo move house!")).to eq "yes this is a todo"
  end
end