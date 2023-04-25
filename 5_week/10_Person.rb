class Person

  @@persons = []
  @@wrong_persons = []

  def self.valid_string?(arg)
    return false unless arg.is_a?(String)  && arg.length == 10

    arg.each_char do |el|
      return false if el.ord < '0'.ord || el.ord > '9'.ord
    end
    true
  end

  def initialize(num)
    if Person.valid_string?(num)
      @number = num
      @@persons.append self
    else
      @@wrong_persons.append self
    end
  end

  def self.all_persons
    @@persons
  end

  def self.wrong_persons
    @@wrong_persons
  end
end

p1 = Person.new('qerq')
p2 = Person.new(1341234)
p3 = Person.new('1234567890')
p4 = Person.new('4444444444')

p Person.all_persons.length
p Person.wrong_persons