class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title 
    @contents = contents
    @alread_used_method_once = 0
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

  def reading_time(wpm)
    words = count_words()
    mins = words.to_f / wpm
    return "#{mins} minute(s)"
  end



  def reading_chunk(wpm, minutes) 
    what_can_be_read = wpm * minutes 
    content_to_read = count_words()
    array_of_words = @contents.split(" ")
    if @alread_used_method_once > 0
      if what_can_be_read >= content_to_read - @read
        @alread_used_method_once = 0
        read = @read
        @read = 0
        return array_of_words[read, content_to_read].join(" ")

      elsif what_can_be_read < content_to_read - @read
        return array_of_words[@read, what_can_be_read -1].join(" ")
      end
    end
    if what_can_be_read > content_to_read
      return @contents
    elsif what_can_be_read < content_to_read
      @alread_used_method_once += 1
      @read += what_can_be_read
      return array_of_words[0, what_can_be_read - 1].join(" ")
    end 
  end
end
string = Array.new(200, "first_half") + Array.new(200, "second_half")
string = string.join(" ")
diary = DiaryEntry.new("thursday", string)


