class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
    @called = 0
    @read = 0
  end

  def title
    @title 
  end

  def contents
    @contents
  end 

  def count_words
    @contents.split(" ").count
  end

  def word_count
    word_count = @contents.split(" ").count
  end
  
  def reading_time(wpm)
    words = word_count()
    mins = words.to_f / wpm
    return "#{mins} minute(s)"
  end



  def reading_chunk(wpm, minutes) 
    string = @contents.split(" ")
    read_able = wpm * minutes 
    read = @read
    last_element_in_arr = word_count 
    if @called > 0
      p @read
      p string[@read, last_element_in_arr].count
      p  read_able
      if string[@read, last_element_in_arr].count <= read_able
        p "in first "
       string[@read, last_element_in_arr-1].join(" ")
       return
      else
        p "in first second "
        @read += read_able
        string = string[@read+1, @read+read_able].join(" ")
      end 
    end 
    if read_able > string.length
      @called = 0
      @read += read_able
      p " in second set frist"
      string.join(" ")
    else
      p "in second second set"
      @called += 1
      string = string[0,read_able].join(" ")
    end 
    
    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end

