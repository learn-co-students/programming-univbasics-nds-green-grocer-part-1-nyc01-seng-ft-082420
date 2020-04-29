require 'pry'

def find_item_by_name_in_collection(name, collection)
  success = nil
  collection.each do |index|
    index.map do |key, value|
      
      if value == name
        success = true
      end
    end
    if success
      return index
    end
  end
  if !success 
    return success
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  unique_cart = []
  
  cart.each do |index|
    unless unique_cart.include? index
      unique_cart << index
      index[:count] = 1
    else
      index[:count] += 1
    end
  end
end


  