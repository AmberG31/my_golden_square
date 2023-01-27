require "restaurant"

RSpec.describe "Restaurant methods" do
  context "#view_cart when one dish added" do
    it "returns the dish and quantity" do
      my_order = Restaurant.new
      my_order.add_to_cart("chicken strips", 1)
      expect(my_order.view_cart).to eq "chicken strips x1"
    end
  end
end

# # 6
# my_order = Restaurant.new
# my_order.add_to_cart("chicken strips", 3)
# my_order.add_to_cart("ribs", 1)
# my_order.view_cart => ("chicken strips" x3, "ribs" x1)


# # 7
# my_order = Restaurant.new
# my_order.add_to_cart("chicken strips", 3)
# my_order.add_to_cart("ribs", 1)
# my_order.remove_from_cart("ribs", 1)
# my_order.view_cart => ("chicken strips" x3)

# # 8
# my_order = Restaurant.new
# my_order.add_to_cart("chicken strips", 3)
# my_order.add_to_cart("ribs", 1)
# my_order.remove_from_cart("chicken strips", 2)
# my_order.view_cart => ("chicken strips" x1, "ribs" x1)

# # 9
# my_order = Restaurant.new
# my_order.add_to_cart("chicken strips", 1)
# my_order.remove_from_cart("chicken strips", 1)
# my_order.view_cart => "Your cart is empty"
  