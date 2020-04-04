class Stack
  def initialize
    @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack << el
    el
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack[-1]
  end
end


class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue[0]
  end
end


# class Map
#   def initialize
#     @map = []
#   end

#   def set(key, value)
#     if map.flatten.include?(key)

#     end
#   end

#   def get(key)
    
#   end

#   def delete(key)
#   end
# end

