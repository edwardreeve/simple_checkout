# Checkout for scanning items and keeping track
# of total cost
class Checkout
  def initialize
    @total = 0
  end

  def scan(item)
    @total += item.price
  end

  def total?
    "£#{'%.2f' % (@total / 100.00)}"
  end
end
