# item_1 = {:product => "Apple", :color => "Red", :price => "1.00"}
# item_2 = {product: "Orange", color: "Orange", price: 2.00}
# item_3 = {product: "Banana", color: "Yellow", price: 3.00}

# p "The item you are buying is an #{item_1[:product]} that is #{item_1[:color]} in color and will cost #{item_1[:price]}"

# p "The item you are buying is an #{item_2[:product]} that is #{item_2[:color]} in color and will cost #{item_2[:price]}"

# p "The item you are buying is a #{item_3[:product]} that is #{item_3[:color]} in color and will cost #{item_3[:price]}"

class StoreItem
  attr_reader :product, :color, :price
  
  def initialize (input_options)
    @product = input_options[:product]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def print_info
    "The item you are buying is an #{@product} that is #{@color} in color and will cost $#{@price}"
  end

  def discount
    @price *= 0.25
  end
end

item = StoreItem.new(
  {
  :product => "Bluberry",
  :color =>  "Blue", 
  :price =>  2.00
  }
)

p item.print_info
p item.discount

item_2 = StoreItem.new(
  {
  :product => "Blackberry",
  :color =>  "Purple", 
  :price =>  5.00
  }
)

p item_2.print_info
p item_2.discount
