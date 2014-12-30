class Cell

  def initialize
    @contents = :water
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
    @contents = :ship
  end

  def hit?
    if full?
      @hit = true
    else
      @hit = false
    end
  end



  # def intialize
  #   @full = false
  # end

  # def full?
  #   @full
  # end

  # def full
  #   @full = true
  # end

  # def empty
  #   @full = false
  # end

  # def fill!
  #   @full = true
  # end

  # # def hit?
  # #   if full?
  # #     @hit = true
  # #   else
  # #     @hit = false
  # #   end
  # # end

end