require_relative('./Employee')

# Manager class
class Manager < Employee
  def initialize(fn, ln, birthday, salary, bonus)
    super(fn, ln, birthday, salary)
    @bonus = bonus
    @salary += @bonus
  end
end
