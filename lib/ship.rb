class Ship

  def initialize(size)
    @size = size
    @health = size
  end

	def size
		@size
	end

  def health
    @health
  end

  def floating?
    not sunk?
  end

  def hit!
    @health = health - 1
  end

  def sunk?
    health == 0
  end

  def self.aircraft_carrier
    new 5
  end

  def self.battleship
    new 4
  end

  def self.submarine
    new 3
  end

  def self.destroyer
    new 3
  end

  def self.patrol_boat
    new 2
  end

end
