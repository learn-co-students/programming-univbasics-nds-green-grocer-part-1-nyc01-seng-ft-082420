require 'pry'

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item|
    
    if item[:item] == name
      return item
    end
    
  end
  
  nil
end

def consolidate_cart(cart)
  
  items = cart.each do |item|
    name = item[:item]
    listed_item = find_item_by_name_in_collection(name, cart)
    
    if listed_item[:count] == nil
      
      listed_item[:count] = 1
      
    else
      
    listed_item[:count] += 1
    
    end
    
  end
    
end


  