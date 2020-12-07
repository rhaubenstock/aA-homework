class Stack
  def initialize
    # create ivar to store stack here!
    @stack_arr = []
  end

  def push(el)
    # adds an element to the stack
    @stack_arr << el
    p self
    nil
  end

  def pop
    # removes one element from the stack
    popped = @stack_arr.pop
    p self
    popped
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack_arr[-1]
  end

  def inspect
    @stack_arr
  end
end