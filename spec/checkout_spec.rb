require 'checkout'
describe Checkout do
  let(:item) { instance_double('Item', :price => cost) }
  let(:checkout) { Checkout.new }
  let(:cost) { 155 }

  it 'should allow me to scan an item' do
    expect { checkout.scan(item) }.not_to raise_error
  end

  it 'should show the total cost of multiple scanned items' do
    2.times { checkout.scan(item) }
    expect(checkout.total?).to eq("£#{'%.2f' % ((2 * cost) / 100.00)}")
  end
end
