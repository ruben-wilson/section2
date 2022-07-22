require "track.rb"

RSpec.describe Track do
  it "it turns the title of a track" do
    track = Track.new("my track", "somonoe1")
    expect(track.title).to eq "my track"
  end

end 