module ConsoleInput
  def string
    puts 'Enter any string'
    str = gets.chomp
    str
  end

  def number
    puts 'Enter any number'
    str = gets.chomp
    if str.include?('.')
      str.to_f
    else
      str.to_i
    end
  end

  def symbol
    puts 'Enter any letters'
    str = gets.chomp
    puts ":#{str}" if str.count("a-zA-Z") > 0
    exit
  end

  def hash
    arr = []
    puts "Enter hash in format 'key: value' or 'key => value'"
    str = gets.chomp
    if str.include?(': ')
      arr[0] = str.split(': ')
      arr.to_h
    elsif str.include?(' => ')
      arr[0] = str.split(' => ')
      arr.to_h
    end
  end
end

include ConsoleInput

# arr = [['d', 'd']]
# puts arr.to_h

p ConsoleInput.hash
#p ConsoleInput.symbol
#p ConsoleInput.number

# a = [':', 234]
# puts a