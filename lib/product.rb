class Product
  attr_reader :category, :name, :quantity, :unit_price

  def initialize (category, name, unit_price, quantity)
    @category = category
    @name = name
    @quantity = quantity.to_i
    @unit_price = unit_price
    @hoarded = false
  end

  def total_price
    @quantity * @unit_price
  end

  def is_hoarded?
    @hoarded
  end

  def hoard
    @hoarded = true
  end

end
