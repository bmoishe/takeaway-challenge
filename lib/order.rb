class Order
attr_reader :menu
  def initialize( menu =  Menu.new)
  @menu = menu
   @reviewed_order = []
   @item_arr = []
   @quantity_arr = []
   @item_prices = []
  end

  def select_order(quantity, item)
    @quantity = quantity
    @item = item
    @price = @quantity.to_i * @menu.menu_hash[@item] # get total price for that item
    @item_prices << @price # add this to a price array
    @selected_order =  "#{@quantity}. #{@item}" #Put order into a string
    @reviewed_order << @selected_order # ready this for review order method

  end

  def review_order
    @reviewed_order
  end

  def total_order
      sum = 0
        @item_prices.each { |a| sum+=a } # Get total of prices
        p "£#{sum}"
  end

  def place_order
    return "Thank you! Your order was placed and will be delivered before 18:52"
  end
end
