# PHASE 2
def convert_to_int(str)
  Integer(str)
rescue
  p "Failed to convert to int, returning argument"
  str #just return the same string 
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class CoffeeError < StandardError
  def message
    "That's nice of you but I can't drink anymore, I'd really prefer a fruit instead!"
  end
end

class NotCoffeeOrFruitError < StandardError
  def message
    "I don't like this. Goodbye"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit.capitalize == "Coffee"
    raise CoffeeError
  else
    raise NotCoffeeOrFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError => e
    puts e.message
    retry
  rescue NotCoffeeOrFruitError => e
    puts e.message
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("Friendship must be at least 5 years") if yrs_known < 5
    raise ArgumentError.new("Name canont be blank") if name == ""
    raise ArgumentError.new("Pasttime cannot be blank") if fav_pastime == ""
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


