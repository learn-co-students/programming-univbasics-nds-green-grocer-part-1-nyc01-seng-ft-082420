require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find { |grocery| grocery[:item] == name  }

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.


=begin
  cart.each do |grocery|
    count = 0
    if !grocery[:count]
      grocery[:count] = 1
      count = 1
      new_cart << grocery
    end
  end
  new_cart
=end

  new_cart = []
  cart.each do |grocery|
    # looks in new_cart to see if there are any of the current grocery
    current_item = find_item_by_name_in_collection(grocery[:item], new_cart)
     #if the grocery is already in new_cart
     if current_item
       current_item[:count] += 1
     else
       grocery[:count] = 1
       new_cart << grocery
     end
  end
  new_cart
end
