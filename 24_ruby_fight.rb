# The Company has two directors who are passionately disagreeing, they want to fight it out. Being the fantastic human you are, you propose creating a virtual fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that calculates the impact of hits (decreases the opponents heath by the the amount of the other players power). And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until  the is alive method returns false for one of them. When the loop is finished (which would mean one of the players has lost), show the players output.

# Then create two Player objects (create a random value for each player’s health and power, make is so that the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.

class Player
  attr_accessor :name, :health, :power
  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end

  def is_alive
    @health >= 0 ? true : false
  end

  def get_damage(opponent_power)
    @health -= opponent_power
  end

  def winning_message(player)
    message = "#{player.name} wins the fight!! "
    message += "#{player.name} has #{player.health} health points left!"
    return message
  end
end

shaun = Player.new("Shaun", rand(150..200), rand(20..25))
denis = Player.new("Denis", rand(150..200), rand(20..25))

def fight(player1, player2)
  puts "Let the fight between #{player1.name} and #{player2.name} begins!"
  random_number = rand(1..2)
  if random_number == 1
    first_player = player1
    last_player = player2
  else
    first_player = player2
    last_player = player1
  end
  loop do
    last_player.get_damage(first_player.power)
    break if !last_player.is_alive
    first_player.get_damage(last_player.power)
    break if !first_player.is_alive
  end
  first_player.is_alive ? (puts first_player.winning_message(first_player)) : (puts last_player.winning_message(last_player))
end

fight(shaun, denis)
