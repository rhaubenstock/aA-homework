class Map

  def initialize
    @keys = []
    @values = []    
  end

  def set(key, value)
    idx = @keys.index(key)
    if idx.nil?
      @keys << key
      @values << value
    else
      @values[idx] = value
    end
    p self
    nil
  end

  def get(key)
    # returns a reference to the array, can mutate values, not sure if we want this property or not
    # would have to create a deep copy if didn't want user to be able to mutate value through this
    # method
    idx = @keys.index(key)
    idx.nil? ? nil : @values[idx]
  end

  def delete(key)
    idx = @keys.index(key)
    unless idx.nil?
      @keys.delete_at(idx)
      @values.delete_at(idx)
    end
    p self
    nil
  end

  def show
    (0...@keys.length).each do |idx|
      puts "#{@keys[idx]}: #{@values[idx]}"
    end
    nil
  end

  def inspect
    (0...@keys.length).map {|i| "#{@keys[i]}: #{@values[i]}"}.join("\n")
  end
end