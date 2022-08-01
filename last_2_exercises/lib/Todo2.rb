# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    @task = task
  end

  def task
   @task
  end

  def mark_done!
    @task = "Completed! :" + @task
  end

  def done?
    if @task.include? "Completed! : "
      return true 
    else
      return false
    end
  end
end
