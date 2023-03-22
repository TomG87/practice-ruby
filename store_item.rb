# item_1 = {:product => "Apple", :color => "Red", :price => "1.00"}
# item_2 = {product: "Orange", color: "Orange", price: 2.00}
# item_3 = {product: "Banana", color: "Yellow", price: 3.00}

# p "The item you are buying is an #{item_1[:product]} that is #{item_1[:color]} in color and will cost #{item_1[:price]}"

# p "The item you are buying is an #{item_2[:product]} that is #{item_2[:color]} in color and will cost #{item_2[:price]}"

# p "The item you are buying is a #{item_3[:product]} that is #{item_3[:color]} in color and will cost #{item_3[:price]}"

class Storeitem
  def initialize (product, color, price)
    @product = product
    @color = color
    @price = price
  end

  def print_info
    "The item you are buying is an #{@product} that is #{@color} in color and will cost $#{@price.to_f}"
  end

  def discount
    @price *= 0.25
  end
end

item = Storeitem.new("Blueberry", "Blue", 2.00)

p item.print_info
p item.discount