def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  return nil
end

def consolidate_cart(cart)
  new_cart = {}
  cart.each do |item|
    if !new_cart[item[:item]] 
      item[:count] = 1
      new_cart[item[:item]] = item
    else
      item[:count] += 1
    end
  end
  new_cart.values
end


  