class TodoClass
  def initialize
    @list_of_todos = Array.new
  end
  def addTodo(todo) #a todo represented as a string
    @list_of_todos << todo
  end

  def output # takes no inputs
    string = String.new
    @list_of_todos.join(", ")
  end

end 