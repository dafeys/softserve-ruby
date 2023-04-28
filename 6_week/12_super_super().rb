class Animal

  def var_arg(*a)
    if (a.length ==0)
      return 'nothing'
    else
      return "#{self.class.name} type with #{a} args"
    end
  end
end

class Mammal < Animal

  def var_arg(*a)
    super() # call super method without arrgs
  end
end

class Reptile < Animal
  def var_arg(*a)
    super
  end
end


anamal = Animal.new
puts anamal.var_arg('a', 'b')

horse = Mammal.new
puts horse.var_arg('1')

crocodile = Reptile.new
puts crocodile.var_arg('2')