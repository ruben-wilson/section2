# File: lib/track.rb

class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist
  end

  def title
    @title
  end

  def format
    # Returns a string of the form "TITLE by ARTIST"
  end
end