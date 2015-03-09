require 'ship'

describe Ship do

 let(:ship) { Ship.new(2) }

context 'Ship properties' do

  it 'should have a size when created' do
    expect(ship.size).to eq(2)
  end

  it 'should have a health equal to size' do
    expect(ship.health).to eq(2)
  end

  it "should lose a health point when hit" do
    expect { ship.hit! }.to change { ship.health }.from(2).to(1)
  end

  it "should be sunk if all health is lost" do
    ship.hit!
    ship.hit!
    expect(ship.sunk?).to eq(true)
  end

  it "should not be sunk if health is not 0" do
    ship.hit!
    expect(ship).to be_floating
  end

end

context 'Types of ship' do

  it "should be able create an aircraft carrier" do
    expect(Ship.aircraft_carrier.size).to eq 5
  end

  it "should be able to create a battleship" do
    expect(Ship.battleship.size).to eq 4
  end

  it "should be able to create a submarine" do
    expect(Ship.submarine.size).to eq 3
  end

  it "should be able to create a destroyer" do
    expect(Ship.destroyer.size).to eq 3
  end

  it "should be able to create a patrol boat" do
    expect(Ship.patrol_boat.size).to eq 2
  end

end

end
