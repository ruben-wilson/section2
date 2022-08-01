require "Diary2"
require "DiaryEntery"

RSpec.describe do
  describe "adding entry" do
    it "returns a list of instances of diary Entry" do
    diary = Diary.new
    entry = DiaryEntry.new("my_title", "my_contents")
    diary.add(entry)
    expect(diary.all).to eq [entry]
    end

    it "check add() and all() work correctly and output inputted entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all).to eq [entry_1, entry_2]
    end
  end
  describe "#count_words" do
    it "check that count words returns correct number for one entry" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      diary.add(entry_1)
      expect(diary.count_words).to eq "my_title_1 has 1 word."
    end
    it "check that count words returns correct number for multiple entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq "my_title_1 has 1 word. my_title_2 has 1 word."
    end
     it "returns in minutes the estimated reading time" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(1)).to eq 2
    end
  end
  describe "#count_words" do
    it "counts the words in each diary entry" do
      diary = Diary.new
      entry = DiaryEntry.new("my_title", "my_contents")
      diary.add(entry)
      expect(diary.count_words).to eq "my_title has 1 word."
    end
  end
  describe "#reading_time" do
    it "returns in minutes the estimated reading time" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(1)).to eq 2
    end
  end
  describe "find_best_entry_for_reading_time" do
    it "returns the entry with the closest reading time to wpm" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
      entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.find_best_entry_for_reading_time(1,1)).to eq entry_1
    end
  end
end