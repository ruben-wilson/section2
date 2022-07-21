# music-tracker.rb Design recipe 

## Describe the problem
_puts the user story and any other useful info you may have._
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them

## Describe the class interface

_include the initalizer and public methods with all pramaters and return values + data types._

```ruby
# EXAMPLE
class MusicTracker 
  def inializer #this will take a string of tracks already listened to 
    #@tracks
  end

  def add(track)#this will take a track represented as a string

  end
  def display
  # => this will output all tracks as a string with number 
      #representing thier order this will be done using 
      #string interpolation
  end
end
```

## create examples as tests 
 
_make a list of examples of how the program should work in different situations._

```ruby
# EXAMPLE
#1
my_music = MusicTracker.new("lumberjack -someone, stone roses -older musicans, aint like -mowgs, trapper of the year - nines")
my_music.display # => 1. lumberjack -someone, 2 stone roses -older musicans ... 
#2
my_music = MusicTracker.new("lumberjack -someone, stone roses -older musicans")
my_music.add("trapper of the year - nines")
my_music.display # => 1. lumberjack -someone, 2 stone roses -older musicans ... 
```


