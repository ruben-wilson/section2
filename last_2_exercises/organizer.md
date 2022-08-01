# {{Diary}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

> User wants to add diary entries to a diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

> User wants to return past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

> User wants to return diary entries based on word count of entries and reading speed - interpreted as words per minute

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

> User wants to keep a todo list

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

> user wants a list of mobile numbers written in their diary entries

## 2. Design the Class System
```
                              ┌────────────────────────────────────────────────┐
                              │    Organizer   
                                                                               │
                              │   add_entry(entry)                             │
                              │                                                │
                              │   add_task(task)                               │
                              │                                                │
                              │   all_entries                                  │
                              │      => [entries..]                            │
                              │   all_tasks                                    │
                              │      => [tasks...]                             │
                              │   find_entries_based_on_reading_speed(wpm,time)├───┐
                      ┌───────┤      => [entries..]                            │   │
                      │       │   all_phone_numbers                            │   │
                      │       │      => [numbers...]                           │   │
                      │       └────────────────────────────────────────────────┘   │
                      │                                                            │
                      │                                                            │
                      │                                           ┌────────────────▼┐
┌─────────────────────▼─────┐                                     │     Task        │
│    DiaryEntry             │                                     │ initalize(task) │
│  initalize(title,contents)│                                     │                 │
│                           │                                     │ task            │
│  title                    │                                     │  => task(string)│
│      => title             │                                     │                 │
│  contents                 │                                     │                 │
│      => contents          │                                     └─────────────────┘
│  word_count               │
│      =>self.word_count    │
│  find_phone_numbers       │
│      =>[phone_numbers...] │
└───────────────────────────┘


```

_Also design the interface of each class in more detail._

```ruby
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

class DiaryEntry
  def initialize(title, contents) # title and contents are strings
    # ...
  end

  def title
    # returns the title
  end

  def contents
    # returns the contents
  end

  def word_count
    # returns the word count of contents
  end

  def find_phone_numbers
    # returns phone numbers written in contents as an array
  end
end

class Todos
  def initialize(todo) # todo is a string
    # ...
  end

  def task
    # returns the todo
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# add diary entry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "went to shops")
diary.add_entry(diary_entry_1)
diary.all_entries # => [diary_entry_1]

# add todo
diary = Diary.new
todo_1 = todo.new("get lunch")
diary.add_todo(todo_1)
diary.all_todo # => [todo_1]

# add entry and todo
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "went to shops")
diary.add_entry(diary_entry_1)
todo_1 = todo.new("get lunch")
diary.add_todo(todo_1)
diary.all_entries # => [diary_entry_1]
diary.all_todos # => [todo_1]

# find entries based on reading speed
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "one " * 200)
diary_entry_2 = DiaryEntry.new("Tuesday", "two " * 400)
diary.add_entry(diary_entry_1)
diary.add_entry(diary_entry_2)
diary.find_entries_based_on_reading_speed(200, 1) # => [diary_entry_1]
diary.find_entries_based_on_reading_speed(400, 1) # => [diary_entry_2]

# return phone numbers from entries
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "my friend Dave - 07777000000")
diary_entry_2 = DiaryEntry.new("Tuesday", "Sarah is great - 07983525525")
diary_entry_3 = DiaryEntry.new("Wednesday", "went swimming")
diary.add_entry(diary_entry_1)
diary.add_entry(diary_entry_2)
diary.add_entry(diary_entry_3)
diary.all_phone_numbers # => ["07777000000", "07983525525"]

# no duplicate phone numbers
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "my friend Dave - 07777000000")
diary_entry_2 = DiaryEntry.new("Tuesday", "Sarah is great - 07777000000")
diary.add_entry(diary_entry_1)
diary.add_entry(diary_entry_2)
diary.all_phone_numbers # => ["07777000000"]

# multiple numbers in entry returned within flattened array
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "my friend Dave - 07777000000, and Brian - 07900000000")
diary_entry_2 = DiaryEntry.new("Tuesday", "Sarah is great - 07600000000")
diary.add_entry(diary_entry_1)
diary.add_entry(diary_entry_2)
diary.all_phone_numbers # => ["07777000000", "07900000000", "07600000000"]

# should fail if wpm or minutes are not integers above 0
diary = Diary.new
diary_entry_1 = DiaryEntry.new("Monday", "my friend Dave - 07777000000")
diary_entry_2 = DiaryEntry.new("Tuesday", "Sarah is great - 07600000000")
diary.find_entries_based_on_reading_speed(0, 1) # throws an exception "values must be integers greater than 0"
diary.find_entries_based_on_reading_speed(true, 1) # throws an exception "values must be integers greater than 0"
diary.find_entries_based_on_reading_speed(0, 0) # throws an exception "values must be integers greater than 0"
diary.find_entries_based_on_reading_speed("200", [0]) # throws an exception "values must be integers greater than 0"
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE
#diary 
diary = Diary.new
diary.add_entry("string") # throws an exception "entries must be diary entry objects"
diary.add_todo("string")# throws an exception  "entries must be diary entry objects"

#DiaryEntries
#test for edge cases when initalizing DiaryEntries
entry = DiaryEntry.new(2,[])# throws an exception "entries must be a string"

#when title is called returns title as string 
entry = DiaryEntry.new("title", "contents")
entry.title # => "title"
entry.contents# => "contents"

#when word_count is called returns word count for @contents
entry = DiaryEntry.new("title", "contents")
entry.word_count #=> 1

#returns any numbers within @contents string 
entry = DiaryEntry.new("title", "contents 07600000000")
entry.find_phone_numbers #=>  ["07600000000"]

#returns multiply numbers within an array
entry = DiaryEntry.new("title", "contents 07600000000, 07600000001")
entry.find_phone_numbers #=>  ["07600000000", "07600000001"]

#doesn't return numbers that arnt phone number format
# ie must ither 07  at start and must be 11 digits long 
entry = DiaryEntry.new("title", "contents 97600000000, 076000")
entry.find_phone_numbers #=>  []



# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"

#todo 
# test todo only initalizes with string 
todo = todo.new(true) # expect to throw exception "todo must be string"
todo = todo.new(1) # expect to throw exception "todo must be string"


#todo method returns @todo as string 
todo = todo.new("string")
todo.todo #=> "string"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->



