# The Company has two directors who are passionately disagreeing, they want to
# fight it out. Being the fantastic human you are, you propose creating a virtual
 # fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until
# one of them loses.

# Hints: start by creating a Player class (the instance variables could be name,
# health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is
# alive, another one that calculates the impact of hits (decreases the opponents
# heath by the the amount of the other players power). And a third that outputs
# the players information

# You’ll then need to make a fight method that uses a loop to make the players
# hit one another until  the is alive method returns false for one of them. When
# the loop is finished (which would mean one of the players has lost), show the
# players output.

# Then create two Player objects (create a random value for each player’s health
# and power, make is so that the maximum health value for a player is 200, and
# the maximum power value is 25) and call the fight method.

class Players

  def initialize(player1, player2)
    @p1 = {name: player1, health: rand(50..200)}
    @p2 = {name: player2, health: rand(50..200)}
  end
  def hit(giver, taker)
    giver[:power] = rand(5..25)
    taker[:health] -= giver[:power]
    puts "#{giver[:name]} hits #{taker[:name]} with a #{giver[:power]}"
    stats
  end
  def both_alive
    @p1[:health] > 0 && @p2[:health] > 0
  end
  def stats
    puts "#{@p1[:name]} health: #{@p1[:health]}"
    puts "#{@p2[:name]} health: #{@p2[:health]}"
  end
  def fight
    while both_alive
      hit(@p1, @p2)
      hit(@p2, @p1)
    end
      puts "game over"
      puts stats
  end
end
game1 = Players.new('rev', 'sam')
game1.fight
