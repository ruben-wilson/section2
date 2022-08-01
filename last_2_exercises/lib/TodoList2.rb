# File: lib/todo_list.rb
class TodoList
  def initialize
    @todolist = []
  end

  def add(todo)
    @todolist << todo
  end

  def incomplete
    output = []
    @todolist.each { |todo|
      string = todo.task
      if !string.include? "Completed! :"
        output << todo
      end 
    }
    output
  end

  def complete
    output = []
    @todolist.each { |todo|
      string = todo.task
      if string.include? "Completed! :"
        output << todo
      end 
    }
    output
  end

  def give_up!
    @todolist.each{ |todo|
      string = todo.task
    if !string.include? "Completed :" 
      todo.mark_done!
    end
  }
  @todolist
  end
end