# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject 0 , :+
#  sum_of_array = 0
 # arr.each do |i|
#    sum_of_array == i
 # end
 # return sum_of_array
  
  # YOUR CODE HERE
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sorted = arr.sort
  sorted[-1] + sorted[-2]
end

def sum_to_n? arr, n
  return false if arr.empty? or arr.length < 2
  hash = Hash.new
  arr.each do |element|
    return true if hash.has_key?(element)
    hash[n-element] = element
  end
  return false
end

# Part 2
def hello(name)
 return "Hello, #{name}"
  # YOUR CODE HERE
  
end

def starts_with_consonant? s
  return false if s.empty?
  s.upcase!
  s[0] =~ /[B-DF-HJ-NP-TV-Z]/
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  return true if s == "0"
  s =~ /^[10]*00$/
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn == "" or price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price
  
  def price_as_string
    "$%.2f" % @price
  end
    
  
  
# YOUR CODE HERE
end
