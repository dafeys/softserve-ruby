matrix = [
  [1, 3, 6],
  [4, 2, 8],
  [3, 0, 7],
]

def odd_even(matrix)
  odds = evens = 0
  matrix.each do |x|
    x.each do |y|
      y.odd? ? odds += 1 : evens += 1
    end
  end
  {odd: odds, even: evens}
end

hash = odd_even(matrix)
p hash