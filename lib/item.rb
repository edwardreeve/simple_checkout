# A thing that can be instantiated with a price
# in pence
class Item
  attr_reader :price
  def initialize(price)
    @price = price
  end

  def price?
    "£#{'%.2f' % (@price / 100.00)}"
  end
end
