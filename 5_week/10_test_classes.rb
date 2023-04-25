# class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def method
#     @@title = @title
#   end
 
#   def self.method
#     @@title
#   end
# end

# book1 = Book.new('Book1')
# print(book1.method)
# print(' ')
# print(Book.method)
# puts

#==== 5 ====
# class Book
# @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end

#   def self.title
#     @@title
#   end
# end


# book1 = Book.new('new book')
# puts Book.title # => Book class


#==== 6 ====
# class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def title
#     @title
#   end
#  end
 
#  book = Book.new('new book')
#  puts book.title # => new book

 #==== 7 ====
#  class Book
#   @@title = 'Book class'
#   def initialize(title)
#     @title = title
#   end
 
#   def self.title
#     @@title
#   end
# end

# book = Book.new('new book')
# puts Book.title # => Book class

#==== 9 ====
# class Example
#   def self.title
#     '1'
#   end
#   def title
#     '2'
#   end
 
#   def method
#     puts self.title
#   end
#  end

#  ex = Example.new
#  ex.method

#==== 10 ====
class Book

  def initialize(title)
    @title = title
  end
 
  def self.title
    @title
  end
 
 end
 
 book = Book.new 'new book'
 puts book.title