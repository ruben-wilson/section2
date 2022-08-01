class Organizer
  def initalize
    # ...
  end 

  def add_entry(entry) #entry is a diary entry object
    # add entry to diaryentry array 
    # returns nothing
  end 

  def add_task(task) # task is a task object
    # returns nothing 
  end

  def all_entries
    # returns array of diary entries
  end

  def all_tasks
    # returns array of tasks 
  end

  def find_entries_based_on_reading_speed(wpm, minutes)
    # returns array of entries with word count matching or under wpm * minutes
  end

  def all_phone_numbers
    # returns an array of numbers
  end
end