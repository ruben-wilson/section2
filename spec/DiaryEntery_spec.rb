require "DiaryEntery"

RSpec.describe DiaryEntry do
  it "returns title and contents of new instance" do
    entry = DiaryEntry.new("my_title", "my_contents")
    expect(entry.title).to eq "my_title"
    expect(entry.contents).to eq "my_contents"
  end
  it "returns word count for entry" do
    entry = DiaryEntry.new("my_title", "my_contents")
    expect(entry.count_words).to eq 1
  end
  it "returns how long the @contents will take to read in mins in respect to the wpm" do
    entry = DiaryEntry.new("my_title", "my_contents")
    expect(entry.reading_time(1)).to eq "1.0 minute(s)"
  end
  it "returns how long the @contents will take to read in mins in respect to the wpm" do
    entry = DiaryEntry.new("my_title", "my_contents")
    expect(entry.reading_time(2)).to eq  "0.5 minute(s)"
  end
  it "returns chunk for wpm and minutes given" do
    entry = DiaryEntry.new("my_title", "my_contents second_half")
    expect(entry.reading_chunk(1,1)).to eq "my_contents"
  end
    
end