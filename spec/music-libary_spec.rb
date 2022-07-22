require "music-libary"

RSpec.describe MusicLibrary do 
  it "returns [] when nothing is available" do
    libary = MusicLibrary.new
    expect(libary.all).to eq []
  end
  
  it "it adds a string data type into @libary" do
    libary = MusicLibrary.new
    libary.add("song")
    #expect(libary.all).to eq ["song"]
  end

it "it returns correct song when searching with key word" do
    libary = MusicLibrary.new
    libary.add("song")
    #expect(libary.search_by_title("song")).to eq ["song"]
  end

it "it returns songs with names that include input word in 'search_by_title'" do
    libary = MusicLibrary.new
    libary.add("song")
    libary.add("song1")
    libary.add("song2")
    #expect(libary.search_by_title("song")).to eq ["song","song1","song2"]
  end

end

