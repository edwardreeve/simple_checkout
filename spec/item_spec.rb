require 'item'

describe Item do
  let(:item) { Item.new(cost) }
  let(:cost) { 150 }

  it 'should return its price' do
    expect(item.price?).to eq("£1.50")
  end
end