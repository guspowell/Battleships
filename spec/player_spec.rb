require 'player'
require 'ship'

describe Player do

let(:player) { Player.new }
let(:board) { Board.new }
# let(:ship) {double :ship, size: 2}
# let(:ship) {Ship.patrol_boat}

  def place_all_ships
    player.place(board, player.patrol_boat, ["a1","a2"])
    player.place(board, player.aircraft_carrier, ["b1", "b2", "b3", "b4", "b5"])
    player.place(board, player.battleship, ["c1", "c2","c3", "c4"])
    player.place(board, player.destroyer, ["d1", "d2", "d3"])
    player.place(board, player.submarine, ["e1", "e2", "e3"])
  end

  it 'should have a fleet of 5 ships at start of game' do
    expect(player.ship_count).to eq(5)
  end

  it 'should be able to place a ship' do
    expect(player.ship_count).to eq 5
    player.place(board, player.patrol_boat,['a1','a2'])
    expect(player.ship_count).to eq 4
  end

  it 'should only be placed on the equivalent number of cells to size' do
    expect(lambda { player.place(board, player.patrol_boat,['a1','a2','a3']) }).to raise_error(RuntimeError, "Ship does not fit here")
  end

  it "should only be able to be placed on adjoining cells" do
    expect{player.place(board, player.patrol_boat,["a1", "j2"])}.to raise_error(RuntimeError, "Ship must be placed on adjoining cells") 
  end

  it "should know if array is not sequential" do
    expect(player.adjoining(["a1", "j2"])).to eq false
  end

  it "should know when all ships have been placed" do
    place_all_ships
    expect(player.empty).to eq(true)
  end

  it "should raise an error if trying to place a ship if all ships already placed" do
    place_all_ships
    expect{player.place(board,player.patrol_boat,["h4", "h5"])}.to raise_error(RuntimeError, "No ships left to place!")
  end

  # it 'should return hit if player fires at cell with ship in' do
  #   place_all_ships
  #   expect(player.fire(board, 'a1')).to eq 'hit!'
  # end

  # it 'should return hit if player fires at cell with ship in' do
  #   place_all_ships
  #   expect(player.fire(board, 'f5')).to eq 'miss'
  # end

  it 'should return hit if player fires at cell with ship on' do
    place_all_ships
    expect(player.fire(board, :a1)).to eq 'hit!'
  end

 it 'should return miss if player fires at cell with ship in' do
    place_all_ships
    expect(player.fire(board, :g1)).to eq 'miss!'
  end

end
