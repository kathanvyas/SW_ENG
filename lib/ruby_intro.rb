# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # The method requires summing up of array elements
  # input: array of integers -> arr
  # ouput: sum of array element integers
  arr.sum
end

def max_2_sum arr
  # Method needs to return sum of the largest two numbers
  #input: an array of integers -> arr
  #output: sum
  
  #sorting the array so as to get largest at the end
  arr = arr.sort
  arr.length() == 0 ? 0 : (arr.length()==1 ? arr[-1] : arr[-2]+arr[-1])
end

def sum_to_n? arr, n
  # method outputs the two numbers whose sum leads to 'n'
  # input: array -> arr
  # input: number -> n
  # output: boolean response
  
  # returning flase for array length < 2
  if arr.length() < 2
    return false
  end
  # sorting to bring lowest to largest values in array
  arr = arr.sort
  
  #define two numbers from start to end
  n1 = 0
  n2 = arr.length()-1
  
  #running a loop over entire array length to find if sum equals n
  while n1<n2
    if arr[n1] + arr[n2] == n 
      return true
    elsif (arr[n1] + arr[n2]) < n
      n1 = n1 + 1
    elsif (arr[n1] + arr[n2]) > n
      n2 = n2 - 1
    end
  end 
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 1 and s[0] == '0'
    return true
  end
  !!(s =~ /\A(?=[10])/) and s[-1]=='0' and s[-2] == '0'
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
    if price <=0 or isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    if price <=0
      raise ArgumentError
    end
    @price = price
  end
  
  def isbn=(isbn)
    if isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price_as_string
    '$' + '%.2f' % @price
  end 
end
