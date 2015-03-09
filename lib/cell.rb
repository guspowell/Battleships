class Cell

  def initialize
    @contents = :w
    @full = false
  end

  def contents
    @contents
  end

  def full?
    @full
  end

  def full
    @full = true
  end

  def fill!
    @full = true
    @contents = :s
  end

  def hit?
    if full?
      @hit = true
    else
      @hit = false
    end
  end

end
