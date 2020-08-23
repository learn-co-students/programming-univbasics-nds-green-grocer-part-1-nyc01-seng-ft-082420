require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  answer = nil
  collection.each do |item|

    if item[:item] == name
      answer = item
    end
  end
  answer
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |cart_item|
    item_name = find_item_by_name_in_collection(cart_item[:item], new_cart)
    if item_name
      cart_item[:count] +=1
    else
      cart_item[:count] = 1
      new_cart << cart_item
    end
  end
  new_cart
end



# grocery_shelf = [
#   { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
#   { :item => "CANNED CORN", :price => 2.50, :clearance => false },
#   { :item => "SALSA", :price => 1.50, :clearance => false },
#   { :item => "TORTILLAS", :price => 2.00, :clearance => false },
#   { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
# ]
#
# find_item_by_name_in_collection("HOT SAUCE", grocery_shelf)
