require 'cell'

describe Cell do
  
  let (:cell) {Cell.new}


  it 'should have a content of water' do
    expect(cell.contents).to eq(:water)
  end

  it 'should be empty upon initializing (water only)' do
    expect(cell).not_to be_full
  end

  it 'should be able to be filled' do
    cell.fill!
    expect(cell).to be_full
  end

  it 'should be able to return hit if full' do
    cell.fill!
    expect(cell.hit?).to eq(true)
  end

  it 'should be able to return miss if empty' do
    expect(cell.hit?).to eq(false)
  end


end