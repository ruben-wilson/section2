class Diary
  def initialize
    @diary_entries = []
  end

  def add(entry)
    @diary_entries << entry
  end

  def all
    @diary_entries
  end

  def count_words
    output = []
    p  @diary_entries
    @diary_entries.each{ |entry|
      entry.count_words > 1 ? output << "#{entry.title} has #{entry.count_words} word(s)." : output << "#{entry.title} has #{entry.count_words} word."
    }
    output.join(" ")
  end

  def reading_time(wpm) 
    total_mins = 0
    @diary_entries.each{ |entry| 
        total_mins += entry.reading_time(wpm)
      }
    total_mins
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        time_to_read_in  = wpm * minutes
        output = []
        closes = 0
        @diary_entries.each{ |entry| 
          if entry.reading_time(wpm) <= time_to_read_in
            if entry.reading_time(wpm) > closes
              closes = entry.reading_time(wpm)
              output << entry
            end
          end
        }

        output[-1]
  end
end
