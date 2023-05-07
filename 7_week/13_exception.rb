#==== exception sample
begin
  1/0
rescue ZeroDivisionError => e
  puts "Exception Class: #{e.class}"
  puts "Exception Message: #{e.message}"
  puts "Exception Traceback: #{e.backtrace}"
end
puts

#==== $! magic
begin
  1/0
rescue 
  puts "Exception Class: #{$!.class}"
  puts "Exception Message: #{$!.message}"
  puts "Exception Traceback: #{$@}"
end
puts


#==== begin - rescue - else - ensure - end
puts 'enter the number'
a = gets.strip.to_i
begin
  puts "#{10/a}"
rescue StandardError
  puts $!.message
else
  puts 'no errors'
ensure
  puts 'any way message'
end
puts


#==== raise keyword
require 'date'

def dob
  puts 'Enter your date of birth'
  dob = Date.iso8601(gets.strip)

  raise StandardError.new 'wrong date' if DateTime.now < dob

  dob
end

begin
  puts dob
rescue Date::Error
  puts $!.message
rescue StandardError
  puts $!.message
end



