require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_key, item_name|
    if item_key[:item] == name
      # binding.pry
      return item_key
    end
  end
  nil
end


def consolidate_cart(cart)
  new_cart = []
  counter = 0
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1

    else
      # binding.pry
      cart[counter][:count] = 1
      new_cart << cart[counter]
    end

    counter += 1
  end


  new_cart
end
