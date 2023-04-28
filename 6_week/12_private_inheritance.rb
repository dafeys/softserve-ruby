class Animal

  def public_def
    puts 'Public'
  end

  private

  def private_def
    puts 'Private'
  end
end


class Mammal < Animal

  def public_def
    super
  end

  def private_mamal
    private_def
  end
end


horse = Mammal.new
horse.public_def
horse.private_mamal
horse.private_def # can't acces to private super def
horse.private_mamal # but we can call it