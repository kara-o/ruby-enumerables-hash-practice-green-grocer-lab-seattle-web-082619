require 'pry'

cart = [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
]


def consolidate_cart(cart)
  cart_hash = {}

  cart.each do |item|
    item.each do |key, item_info|
      if cart_hash.key?(key)
        cart_hash[key][:count] += 1
      else
        cart_hash[key] = {
          :price => item_info[:price],
          :clearance => item_info[:clearance],
          :count => 1
        }
      end
    end
  end
  
  cart_hash
end

consolidate_cart(cart)

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
