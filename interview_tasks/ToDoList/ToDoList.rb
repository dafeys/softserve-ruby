class ToDoList
  attr_reader :name

  def initialize(name)
    @tasks = []
    @name = name
  end

  def add(description)
    task = ToDoItem.new(description)
    @tasks.push(task)
  end

  def complete(index)
    @tasks[index - 1].complete
  end

  def delete(index)
    @tasks[index - 1].delete
  end

  def tasks
    yield "#{name} To Do List:"
    @tasks.each_with_index do |task, index|
      yield "\t#{index+1}. #{task.description} \t#{task.status} "
    end
  end
end
