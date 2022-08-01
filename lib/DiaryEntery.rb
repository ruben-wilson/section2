class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @last_word_index = 0
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
    count_words() / wpm.to_f
  end

  def reading_chunk(wpm, minutes)
    @last_word_index = 0 if @last_word_index > count_words
    words = wpm * minutes
    new_index = @last_word_index + words
    chunk = @contents.split(" ")[@last_word_index...(new_index)].join(" ")
    @last_word_index = new_index
    chunk
  end
end