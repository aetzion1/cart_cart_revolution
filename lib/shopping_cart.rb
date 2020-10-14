class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details = {name: name, capacity: capacity.delete("^0-9")}
  end
end
