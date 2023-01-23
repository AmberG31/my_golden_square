class TodoList
  def initialize
    @tasks = []
  end
  
  def add(task) 
    @tasks << task
  end
  
  def list
    return @tasks.join(", ")
  end
  
  def complete(task) 
    fail "No such task" if @tasks.include?(task) == false
    @tasks.delete(task)
  end
end