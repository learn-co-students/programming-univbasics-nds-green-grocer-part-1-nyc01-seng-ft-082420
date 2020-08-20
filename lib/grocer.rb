def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0
  while index < collection.length do 
    
    return collection[index] if collection[index][:item] === name
  index += 1
 end

end



def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
receipt = []
index = 0
while index < cart.length do
item = find_item_by_name_in_collection(cart[index][:item], receipt)

if item
  receipt_index = 0
  while receipt_index < receipt.length do
    if receipt[receipt_index][:item] === item[:item]
  receipt[receipt_index][:count] +=1
end
receipt_index += 1
end
else
  cart[index][:count] = 1
  receipt << cart[index]

end
index += 1
 end
 receipt
end


  