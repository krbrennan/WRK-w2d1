require 'byebug'
# PHASE 2
def convert_to_int(str)
  begin
  Integer(str)
  rescue ArgumentError
  nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp

  reaction(maybe_fruit)
rescue StandardError
  if maybe_fruit == "coffee"
    puts "I do like coffe but feed me a fruit"
    retry
  else
    raise StandardError "You've been eaten"
  end

end
end


# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name raise "YOU DON'T EVEN KNOW MY NAME" if name.empty?
    @yrs_known = yrs_known raise "Friendships, like a fine wine, need as least five years to mature." if yrs_known < 5
    @fav_pastime = fav_pastime raise "I have hobbies, you know..." if fav_pastime.empty?
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
