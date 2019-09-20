# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  arr = arr.sort.reverse
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  if arr.size == 0 or arr.size == 1
    return false
  end
  for item in arr
    dif = n - item
    if arr.include? dif and (item != dif or arr.count(item) >= 2)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 or s[0] =~ /[aeiouAEIOU]/
    return false
  elsif s[0] =~ /[a-zA-Z]/
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s =~ /[^01]/ or s.length == 0
    return false
  end
  chars = s.split('')
  i     = s.length - 1
  tot   = 0
  for item in chars
    tot += item.to_i << i
    i   -= 1
  end
  return tot % 4 == 0
end

# Part 3

class BookInStock
  @@isbn  = 0
  @@price = 0
  def initialize(isbn, price)
    if price <= 0 or isbn.length == 0
      raise ArgumentError, 'Improper arguments passed to constructor!'
    end
    @isbn  = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(val)
    if val.length == 0
      raise ArgumentError, 'Improper argument passed to isbn setter!'
    end
    @isbn = val
  end
  def price=(val)
    if val <= 0
      raise ArgumentError, 'Improper argument passed to price setter!'
    end
    @price = val
  end
  def price_as_string
    return "$%2.2f" % [@price]
  end
end
