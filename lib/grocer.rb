require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = {}
  collection.each { |v|
    if v[:item] == name
      item = v
    end
  }
  if item != {}
    item
  else
    nil 
  end
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart_item = {}
  cart_item_array = []
  cart.each { |v|
    if cart_item[v[:item]] == nil
      cart_item[v[:item]] = {:price => v[:price], :clearance => v[:clearance]}
    end
      (cart_item[v[:item]].has_key? :count) ? (cart_item[v[:item]][:count] += 1) : (cart_item[v[:item]][:count] = 1)
  }

  cart_item.each { |k,v| 
    cart_item_array << {:item => k, :price => v[:price], :clearance => v[:clearance], :count => v[:count]}
  }
  cart_item_array
end


  