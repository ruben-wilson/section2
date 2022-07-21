class MusicTracker 
  def initialize(tracks)
    @tracks = tracks.split(",")
  end

  def add(track)
    @tracks << track
  end
  def display
    output = []
    num = 0
    @tracks = @tracks.each{ |track|
      if track[0] == " "
        track[0] = ""
      end
    }
    @tracks.each{ |track|
      if track.empty?
        output 
      else
        output << "#{num += 1}. #{track}"
      end
    }
    output.join(", ")
  end
end