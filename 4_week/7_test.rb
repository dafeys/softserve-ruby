my_lambda = lambda {|name|
  puts "Hello #{name} from my_lambda"
}

my_lambda.('name')


def star_wrap
  puts '44' + yield + '44'
end

star_wrap {'word'}

puts



def m1(proc)
  proc.call 1, 2
end

pr = proc {|n=0| 3*n}

var = m1(pr)
p var


