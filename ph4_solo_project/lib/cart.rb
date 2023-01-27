class Cart
  def initialize 
    @cart = []
  end
  
  def add(name, quantity) 
    @cart << {:name => name, :quantity => quantity}
  end
  
  def remove(name, quantity)
    @cart.each do |item| 
      if item[:name] == name
        item[:quantity] -= quantity
        if item[:quantity] <= 0
          @cart.delete(item)
        end
      end
    end
  end
  
  def view_cart
    fail "Your cart is empty" unless !@cart.empty?
    item = @cart.map do |dish|
      "#{dish[:name]} x#{dish[:quantity]}"
    end
    return item.join(", ")
  end

  def print_receipt #INTEG
    # prints a list of dishes with prices and grand total
  end
  
  def send_SMS #INTEG
    # sends SMS to the customer confirming order is placed and when it's arriving
  end
end