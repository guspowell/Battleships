require_relative 'cell'

class Board

  attr_accessor :places, :board_ships

  def initialize
    @board_ships = []
    @places ||= {
      a1: " ", a2: " ", a3: " ", a4: " ", a5: " ", a6: " ", a7: " ", a8: " ", a9: " ", a10: " ",
      b1: " ", b2: " ", b3: " ", b4: " ", b5: " ", b6: " ", b7: " ", b8: " ", b9: " ", b10: " ",
      c1: " ", c2: " ", c3: " ", c4: " ", c5: " ", c6: " ", c7: " ", c8: " ", c9: " ", c10: " ",
      d1: " ", d2: " ", d3: " ", d4: " ", d5: " ", d6: " ", d7: " ", d8: " ", d9: " ", d10: " ",
      e1: " ", e2: " ", e3: " ", e4: " ", e5: " ", e6: " ", e7: " ", e8: " ", e9: " ", e10: " ",
      f1: " ", f2: " ", f3: " ", f4: " ", f5: " ", f6: " ", f7: " ", f8: " ", f9: " ", f10: " ",
      g1: " ", g2: " ", g3: " ", g4: " ", g5: " ", g6: " ", g7: " ", g8: " ", g9: " ", g10: " ",
      h1: " ", h2: " ", h3: " ", h4: " ", h5: " ", h6: " ", h7: " ", h8: " ", h9: " ", h10: " ",
      i1: " ", i2: " ", i3: " ", i4: " ", i5: " ", i6: " ", i7: " ", i8: " ", i9: " ", i10: " ",
      j1: " ", j2: " ", j3: " ", j4: " ", j5: " ", j6: " ", j7: " ", j8: " ", j9: " ", j10: " "
  }
    places.each { |k,v| places[k] = Cell.new }
  end

  def ship_count
    @board_ships.size
  end

  def receive(ship, coords)
    @board_ships << [ship, coords]
  end

  def ship_cells
    @ship_cells = @board_ships.map { |ships| ships[1] }
    @ship_cells.flatten!
  end

  def fill_cells
    ship_cells.each { |cell| places[cell.to_sym] = Cell.new.fill! }
  end


  def draw
    puts "   a b c"
    puts ""
    puts " 1 #{@places[:a1]}|#{@places[:b1]}|#{@places[:c1]}|#{@places[:d1]}|#{@places[:e1]}"
    puts "   -----"
    puts " 2 #{@places[:a2]}|#{@places[:b2]}|#{@places[:c2]}|#{@places[:d2]}|#{@places[:e2]}"
    puts "   -----"
    puts " 3 #{@places[:a3]}|#{@places[:b3]}|#{@places[:c3]}|#{@places[:d3]}|#{@places[:e3]}"
    puts "   -----"
    puts " 3 #{@places[:a4]}|#{@places[:b4]}|#{@places[:c4]}|#{@places[:d4]}|#{@places[:e4]}"
    puts "   -----"
    puts " 3 #{@places[:a5]}|#{@places[:b5]}|#{@places[:c5]}|#{@places[:d5]}|#{@places[:e5]}"
  end

end
