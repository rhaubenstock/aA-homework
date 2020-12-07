class Queue
  def initialize
    # create ivar to store queue here!
    @queue_arr = []
  end

  def enqueue(el)
    # adds an element to the queue
    @queue_arr << el
    p self
    nil
  end

  def dequeue
    # removes one element from the queue
    popped = @queue_arr.shift
    p self
    popped
  end

  def peek
    # returns, but doesn't remove, the top element in the queue
    @queue_arr[0]
  end

  def inspect
    @queue_arr
  end
end