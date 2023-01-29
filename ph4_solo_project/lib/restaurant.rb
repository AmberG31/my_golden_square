require "./menu"
require "./cart"
require "./fake_SMS"

class Restaurant

  def initialize
   @menu = Menu.new
   @my_cart = Cart.new
   # @SMS = FakeSMS.new(account_sid, auth_token)
  end

  def add_to_menu(name, price) #is an instance of Menu add_dish - 
    @menu.add_dish(name, price)
  end
  
  def view_menu #hot to get this display show_list from Menu file
    return @menu.show_list
  end

  def add_to_cart(name, quantity) 
    @my_cart.add(name, quantity)
  end
  
  def remove_from_cart(name, quantity)
    @my_cart.remove(name, quantity)
  end
  
  def view_my_cart
    return @my_cart.view_cart
  end
  
  def order #
    @my_cart.print_receipt
    # @SMS.send_SMS(to)
  end
end

order = Restaurant.new
order.add_to_cart("chicken strips", 1)
puts order.order