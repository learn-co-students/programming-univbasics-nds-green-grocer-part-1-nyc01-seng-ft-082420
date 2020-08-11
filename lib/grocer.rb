require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if hash[:item] == name
      return hash
    end
  end
  return nil
  
  # collection.find{|hash| hash[:item] == name}
end


# cart = [{:item => "KALE", :price => 3.00, :clearance => false}]
def consolidate_cart(cart)
  new_cart = []

  cart.each do |hash|
    # item hash or nil
    if find_item_by_name_in_collection(hash[:item], new_cart) == nil
      # base case, when no item of the name is found
      hash[:count] = 1
      new_cart << hash
    else
      find_item_by_name_in_collection(hash[:item], new_cart)[:count] += 1
    end

  end
  new_cart
end


  