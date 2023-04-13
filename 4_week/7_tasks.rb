# task 1
def sum
  x = yield 4
  x += yield 0
  x += yield -12
end

result = sum {|x| x>=0 ? x : x**2}

p result
puts


# task 2
lambda1 = lambda {|x|
  count = x.to_s.length
  return count if count <=5
  "Недопустима кількість розрядів. Число повинно бути не більше, ніж 5-розрядним"
 }

 p lambda1.call(977)
 puts


# task 3
def check_password (usr, pass)
  proc {|p_usr, p_pass| usr==p_usr&&pass==p_pass}
end

admin = check_password("u1","p1")
p admin.call("u1","p1")
p admin.call("U")
p admin.call("e","d")


# task 4
def m1(&blk)
  return "Method without block" unless block_given?
  blk
end

m1{puts'block is here'}



 


