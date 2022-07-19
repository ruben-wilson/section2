require "single-method.rb"

string = Array.new(200,"water").join(" ")
string2 = Array.new(100,"water").join(" ")


RSpec.describe "reading_time" do 
  it "outputs one minute for 200 words" do
    result = reading_time(string)
    expect(result).to eq "The reading time for this text is 1.0 minute(s)." 
  end

  it "outputs 0.5 minute for 100 words" do
    result = reading_time(string2)
    expect(result).to eq "The reading time for this text is 0.5 minute(s)." 
  end
 
  it "outputs 0.5 minute for 100 words" do
    result = reading_time(string2)
    expect(result).to eq "The reading time for this text is 0.5 minute(s)." 
  end
  
end