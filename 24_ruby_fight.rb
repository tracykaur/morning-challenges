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

class Player

  def initialize(player1, player2)
    @p1_name = player1
    @p1_power = rand(5..25)
    @p1_health = rand(50..200)

    @p2_name = player2
    @p2_power = rand(5..25)
    @p2_health = rand(50..200)
  end

  def health(player)

  end

  def damage(player)
    if player == @p1
      other_player = @p2
    else
      other_player = @p1
    end


    player health -= player2 power
  end

  def Alive?
    @p1_health <= || 0 @p2_health <= 0
  end


  def stats
  end

  def fight
    loop do
      damage(@p1)
    end
  end

  loop do
    start fight
    finnish is alive true
    display stats
  end

end

create two players each with random health and power
