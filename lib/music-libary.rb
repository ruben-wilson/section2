# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @libary = []
  end

  def add(track) # track is an instance of Track
    @libary << track 
  end

  def all
    @libary
  end
  
  def search_by_title(keyword) # keyword is a string
    search_results = []
    @libary.each{ |x|
      if x.title.include?(keyword)
        search_results << x
      end
    }
    search_results
  end
end

