# Searches for an item in a given AoH.
# If item exits, returns hash.
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


#Counts the number of each item in the cart, consolidating to a list of unique items and their counts.
def consolidate_cart(cart)
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


  