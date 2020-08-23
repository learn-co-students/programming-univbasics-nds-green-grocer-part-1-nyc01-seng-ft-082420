require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = {}
  collection.each do |key|
    if key[:item] == name
      
      item = key
    end
  end
  if item != {}
    return item
  else
    return nil
  end
  item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  newCart = []
  cart.each do |item|
    current_item = find_item_by_name_in_collection(item[:item], newCart)
    if current_item
      newCart.each do |new_cart_item|
        if new_cart_item[:item] == current_item[:item]
          new_cart_item[:count] += 1
        end
      end
    else
      item[:count] = 1
      newCart.push(item)
    end
  end
  return newCart
end


  