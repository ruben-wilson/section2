require "music-tracker.rb"

RSpec.describe MusicTracker do 
  it "returns songs inputed on inialize" do 
    my_music = MusicTracker.new("lumberjack -someone, stone roses -older musicans, trapper of the year - nines")
    expect(my_music.display).to eq "1. lumberjack -someone, 2. stone roses -older musicans, 3. trapper of the year - nines"
  end
  it "returns songs inputed on inialize" do 
    my_music = MusicTracker.new("lumberjack -someone, stone roses -older musicans")
    my_music.add("trapper of the year - nines")
    expect(my_music.display).to eq "1. lumberjack -someone, 2. stone roses -older musicans, 3. trapper of the year - nines"
  end
  it "it adds empty string" do 
    my_music = MusicTracker.new("lumberjack -someone, stone roses -older musicans")
    my_music.add("")
    expect(my_music.display).to eq "1. lumberjack -someone, 2. stone roses -older musicans"
  end
end
