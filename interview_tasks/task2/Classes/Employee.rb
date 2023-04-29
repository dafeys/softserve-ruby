require_relative('./Person')

# Employee class
class Employee < Person
  attr_accessor :salary

  def initialize(fn, ln, birthday, salary)
    super(fn, ln, birthday)
    @salary = salary
  end

  def to_s
    "Employee: #{@first_name} #{@last_name} with salary #{salary}"
  end
end
