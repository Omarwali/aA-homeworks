def binary_search(arr, target)
  return nil if arr.size == 0
  mid = arr.size / 2

  case arr[mid] <=> target
    when 0
      return mid
    when 1
      return binary_search(arr.take(mid), target)
    else
      search_res = binary_search(arr.drop(mid + 1), target)
      search_res.nil? ? nil : mid + 1 +search_res 
  end 
end

class Array
  def pair_sum(target)
    pairs = []
    (0...self.length).each do |idx|
      (idx+1...self.length).each do |idx2|
        if self[idx] + self[idx2] == target
          pairs << [idx, idx2] 
        end
      end
    end
    pairs
  end
end

# Write a recursive method that returns the first "num" factorial numbers in
# ascending order. Note that the 1st factorial number is 0!, which equals 1.  
# The 2nd factorial is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  return if num < 1
  factorials_rec(num -1 ) + [factorial(num -1)]
end

def factorial(num)
  return 1 if num == 0
  num * factorial(num-1)
end

class String
  # Write a `String#shuffled_sentence_detector(other_string)` method that 
  # returns true if the words in the string can be rearranged to form the 
  # sentence passed as an argument. Words are separated by spaces.

  # Example:
  # "cats are cool".shuffled_sentence_detector("dogs are cool") => false
  # "cool cats are".shuffled_sentence_detector("cats are cool") => true

  def shuffled_sentence_detector(other_string)
    self.split(" ").sort == other_string.split(" ").sort
  end
end

# Write a method that returns the largest prime factor of a number. You may wish
# to write a `prime?(num)` helper method.

def largest_prime_factor(num)
  return nil if num == 0 || num == 1
  (1..num).select { |i| num % i == 0 && prime?(i) }.last
end

def prime?(num)
  (2...num).each do |factor|
    return false if num % factor == 0
  end
  true
end

class Array
  # Write an `Array#my_each` method that calls a passed block for each element
  # of the array. 
  # **Do NOT use the built-in `Array#each`, `Array#each_with_index` or 
  # `Array#map` methods in your implementation.**

  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
    self
  end
end

class Array
  # Write an `Array#my_map` method that returns an array made up of the
  # elements in the array after being passed through the given block.
  # **Do NOT use the built-in `Array#map` method in your implementation.**

  def my_map(&prc)
    mapped = []
    i = 0
    while i < self.length
      mapped << prc.call(self[i])
      i += 1
    end
    mapped
  end
end

