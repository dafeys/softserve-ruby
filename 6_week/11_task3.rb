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
    true_url = correct(url)
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