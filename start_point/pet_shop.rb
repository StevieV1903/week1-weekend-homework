def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(total_amount)
return total_amount[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount

end
