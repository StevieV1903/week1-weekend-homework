def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(total_amount)
  return total_amount[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  return shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, dog_breed)
  count = []
  for pets in shop[:pets]
    if pets[:breed] == dog_breed
      count << pets[:name]
    end
  end
  return count
end

def find_pet_by_name(shop, pet_name)
  for pets in shop[:pets]
    if pets[:name] == pet_name
      return pets
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pets in shop[:pets]
    if pets[:name] == pet_name
      shop[:pets].delete(pets)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer_name)
  return customer_name[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer_pets)
  return customer_pets[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end
