# Person class
class Person
  attr_accessor :first_name, :last_name, :birthday

  def initialize(fn, ln, birthday)
    @first_name = fn
    @last_name = ln
    @birthday = birthday
  end
end
