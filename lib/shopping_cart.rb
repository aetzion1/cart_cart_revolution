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

  def total_number_of_products
    total = []
    @products.each do |product|
      total << product.quantity.to_i
    end
    total.sum
  end

  def is_full?
    if total_number_of_products > @capacity.to_i
      true
    else false
    end
  end

  # def products_by_category(x)
  # end
  #   @products.each do |product|
  #     if product.category == x
  #       puts product
  #     end
  #   end
  # end
    # @products.where(@product.category: x)

end
