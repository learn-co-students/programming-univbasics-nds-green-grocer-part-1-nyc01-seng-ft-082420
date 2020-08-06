require "pry"
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    return item if item[:item] == name
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt = []
  count = Hash.new(0)
  i = 0 
  cart.each do |item|
    count[item] += 1
  end
  count.each do |item, count|
    item[:count] = count
    receipt << item
  end  
  receipt
end


  