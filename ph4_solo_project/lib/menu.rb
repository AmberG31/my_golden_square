class Menu
  def initialize
    @menu_list = []
  end
  
  def add_dish(name, price)  
    @menu_list << {:name => name, :price => price}
  end
  
  def remove_dish(name)
    @menu_list.reject! { |item| item[:name] == name }
  end
  
  def show_list
    fail "The menu is empty" unless !@menu_list.empty?
    item = @menu_list.map do |dish|
      "#{dish[:name]} £#{dish[:price]}"
    end
    return item.join(", ")
  end
end