require "music-libary"
require "track"

RSpec.describe "Music Player Integration" do
  it "a track is added to @libary" do
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    library.add(track_1)
    expect(library.all).to eq [track_1]
  end

  it "a track is outputed when searched for with name" do
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("Carte")).to eq [track_1]
  end

  it "returns both objects from @libary" do 
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1,track_2]
  end
   it "returns both objects from @libary" do 
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("aes")).to eq [track_2]
  end
   it "returns no object from @libary when input doesnt match" do 
    library = MusicLibrary.new
    track_1 = Track.new("Carte Blanche", "Veracocha")
    track_2 = Track.new("Synaesthesia", "The Thrillseekers")
    library.add(track_1)
    library.add(track_2)
    expect(library.search_by_title("!dfsa")).to eq []
  end
end 

