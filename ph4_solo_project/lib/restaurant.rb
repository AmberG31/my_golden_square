class Restaurant

  def initialize
    # ...
  end

  def view_menu #INTEG
    # Returns the list of dishes with prices from Menu
  end

  def add_to_cart(dish, quantity) #UNIT
    # dish and quantity added from the view_menu to the cart (hash)
    # can select multiple dishes
    # returns nothing
  end
  
  def remove_from_cart(dish, quantity) #UNIT
    # dish and quantity removed from the cart (hash)
    # returns nothing
  end
  
  def view_cart #UNIT
    # returns dish and price of the items added in the cart (hash)
  end
  
  def order #INTEG
    # when ordered, a receipt is printed and SMS is sent 
  end
end