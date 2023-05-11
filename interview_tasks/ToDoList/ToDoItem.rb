class ToDoItem
  attr_accessor :status
  attr_reader :description

  def initialize(description, status = :active)
    @description = description
    @status = status
  end

  def complete
    @status = :completed
  end

  def delete
    @status = :deleted
  end

  def active
    @status = :active
  end
end
