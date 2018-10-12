class Order

  def initialize
   @reviewed_order = []
   @item_arr = []
   @quantity_arr = []
  end

  def select_order(quantity, item)

    @quantity = quantity.to_s
    @item = item.to_s
    @quantity_arr << @quantity
    @item_arr << @item
    @selected_order =  "#{@quantity}. #{@item}"
    @reviewed_order << @selected_order

  end

  def review_order
    return   @reviewed_order
  end

end
