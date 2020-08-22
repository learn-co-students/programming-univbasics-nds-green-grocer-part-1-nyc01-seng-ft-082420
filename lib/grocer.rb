require 'pry'

def find_item_by_name_in_collection(name, collection)
  # set counter
  counter = 0
  # iterate through collection
  while counter < collection.length do
    # if the item key in the nested hash is equal to the name
    if collection[counter][:item] == name
      # return the nested hash
      return collection[counter]
    end
    # increment each time
    counter += 1
  end
end


def consolidate_cart(cart)
  counter = 0
  result = []

  while counter < cart.length do
    inner_result = find_item_by_name_in_collection(cart[counter][:item], result)
    if inner_result != nil
      inner_result[:count] += 1
    else
      inner_result = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      result << inner_result
    end
    counter += 1
  end
  result
end