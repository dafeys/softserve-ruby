# #==== task 1
# class Site
#   attr_reader :current_url

#   HOME_URL = 'https://www.home.com'

#   def initialize
#     @current_url = HOME_URL
#   end

#   def go_to(url)
#     @current_url = HOME_URL + '/' + url if @current_url != HOME_URL + '/' + url
#   end0

#   def to_s
#     str = <<-TEXT
# *----------*
#  home: #{HOME_URL}
#  current url: #{@current_url}
# *----------*
#     TEXT
#   end
# end

# site = Site.new
# puts site
# puts site.current_url
# puts

# puts site.go_to ('chat')
# puts site
# puts site.current_url
# p site.go_to ('chat')

# #==== task 2
# class Site
#   attr_reader :current_url

#   HOME_URL = 'https://www.home.com'

#   @@path = []

#   def initialize
#     @current_url = HOME_URL
#     @@path.append(@current_url)
#   end

#   def go_to(url)
#     if @current_url != HOME_URL + '/' + url
#       @current_url = HOME_URL + '/' + url 
#       @@path.append(@current_url)
#     end
    
#   end

#   def to_s
#     str = <<-TEXT
# *----------*
#  home: #{HOME_URL}
#  current url: #{@current_url}
#  history: #{@@path}
# *----------*
#     TEXT
#   end

#   def ==(other)
#     @current_url == other.current_url
#   end

#   def <(other)
#     @@path.index(@current_url) < @@path.index(other.current_url)
#   end

#   def >(other)
#     @@path.index(@current_url) > @@path.index(other.current_url)
#   end
# end




# a1 = Site.new
# a1.go_to('1')
# a1.go_to('2')
# a2 = Site.new
# a2.go_to('1')

# p a1 > a2

# puts a1


#==== task 3
class Site
  attr_reader :current_url

  HOME_URL = 'https://www.home.com'

  @@path = []

  def initialize
    @current_url = HOME_URL
    @@path.append(@current_url)
  end

  def go_to(url)
    true_url = Site.correct(url)
    return unless @current_url != "#{HOME_URL}/#{true_url}"

    @current_url = "#{HOME_URL}/#{true_url}"
    @@path.append(@current_url)
  end

  def to_s
    <<~TEXT
      *----------*
       home: #{HOME_URL}
       current url: #{@current_url}
       history: #{@@path}
      *----------*
    TEXT
  end

  def ==(other)
    @current_url == other.current_url
  end

  def <(other)
    @@path.index(@current_url) < @@path.index(other.current_url)
  end

  def >(other)
    @@path.index(@current_url) > @@path.index(other.current_url)
  end

  private

  def self.correct(str)
    true_url = ''
    str.each_char do |char|
      if char == ' '
        true_url << '%20'
      else
        true_url << char
      end
    end
    true_url
  end
end




a1 = Site.new
a1.go_to('hello world')
a1.go_to('two words')
puts a1

# a2 = Site.new
# a2.go_to('1')

# p a1 > a2

# puts a1


# def go_to(url)
#   true_url = correct(url)
#   return unless @current_url != "#{HOME_URL}/#{true_url}"

#   @current_url = "#{HOME_URL}/#{true_url}"
#   @@path.append(@current_url)
  
#   # if @current_url != "#{HOME_URL}/#{true_url}"
#   #   @current_url = "#{HOME_URL}/#{true_url}"
#   #   @@path.append(@current_url)
#   # end
# end

def correct(str)
  true_url = ''
  str.each_char do |char|
    if char == ' '
      true_url << '%20'
    else
      true_url << char
    end
  end
  true_url
end


