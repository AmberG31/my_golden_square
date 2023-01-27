require "menu"
require "restaurant"
require "cart"

RSpec.describe "" do
  
end




# # 1
# order = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order.add
# new_order.show_list
# order.view_menu => "chicken strips" price: £5

# # 2
# order = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order = Menu.new("ribs" 7)
# new_order.add
# new_order.show_list
# order.view_menu => "chicken strips" price: £5, "ribs" price: £7

# # 3
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order.add
# orders.add_to_cart(chicken strips, 1)
# orders.order => "Thank you! Your order was placed and will be delivered before 18:52"
# => print_receipt
# => send_SMS

# # 4
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order.add
# orders.add_to_cart(chicken strips, 1)
# orders.order => "Order accepted. You will receive SMS with delivery time shortly"
# => print_receipt
# => send_SMS

# # 5
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order.add
# orders1.add_to_cart(chicken strips, 1)
# orders1.order
# orders.print_receipt (chicken strips. Grand total £5)

# # 6
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order = Menu.new("ribs" 7)
# new_order.add
# orders1.add_to_cart(chicken strips, 1)
# orders2.add_to_cart(ribs, 1)
# orders.order
# orders.print_receipt => "chicken strips, ribs. Grand total £12"

# # 7
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order = Menu.new("ribs" 7)
# new_order.add
# orders1.add_to_cart(chicken strips, 2)
# orders2.add_to_cart(ribs, 2)
# orders.order
# orders.print_receipt => "chicken strips x2, price: £5. ribs x2, prints: £7. Grand total £24"

# # 8
# orders = Restaurant
# new_order = Menu.new("chicken strips" 5)
# new_order.add
# orders1.add_to_cart(chicken strips, 1)
# orders.order
# orders.send_SMS => "Thank you! Your order was placed and will be delivered before /18:52/"
