require "organizer"
require "todos"
require "DiaryEntry"

RSpec.describe "intergration tests" do 
  it "returns diary when 'all_entries' is called" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("Monday", "went to shops")
    diary.add_entry(diary_entry_1)
    expect(diary.all_entries).to eq [diary_entry_1] 
  end
end 