require "Diary2.rb"
RSpec.describe Diary do
  context "created a new instance of diary" do
    it "returns empty array wel all method is called" do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end


end
