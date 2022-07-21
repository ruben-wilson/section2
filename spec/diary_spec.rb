require "diary.rb"
array = Array.new(100, "water").join(" ")
array2 = Array.new(400, "water").join(" ")
string = Array.new(199, "first_half") + Array.new(199, "second_half")
string_second_half = string[200,399].join(" ")
string_first_half = string[0,199].join(" ")
string = string.join(" ")

RSpec.describe DiaryEntry do
  it "returns title" do
    diary = DiaryEntry.new("thursday","blha blha blha")
    result = diary.title
    expect(result).to eq "thursday"
  end
  it "returns contents" do
    diary = DiaryEntry.new("thursday","blha blha blha")
    result = diary.contents
    expect(result).to eq "blha blha blha"
  end
  it "returns count_words" do
    diary = DiaryEntry.new("thursday","blha blha blha")
    result = diary.count_words
    expect(result).to eq 3
  end
  it "returns correct reading time for 1 min" do
    array = Array.new(200, "water").join(" ")
    diary = DiaryEntry.new("thursday", array)
    result = diary.reading_time(200)
    expect(result).to eq "1.0 minute(s)"
  end

  it "returns correct reading time for 0.5 min" do
    array = Array.new(100, "water").join(" ")
    diary = DiaryEntry.new("thursday", array)
    result = diary.reading_time(200)
    expect(result).to eq "0.5 minute(s)"
  end
  
  it "returns first chunk of content that can be read in the time given" do
    diary = DiaryEntry.new("thursday", string)
    result = diary.reading_chunk(200, 1)
    expect(result).to eq string_first_half 
  end 
  it "returns second chunk of half of whats left to read" do
    diary = DiaryEntry.new("thursday", string)
    diary.reading_chunk(200, 1)
    result = diary.reading_chunk(200, 1)

    expect(result).to eq string_second_half 
  end 

  
end
