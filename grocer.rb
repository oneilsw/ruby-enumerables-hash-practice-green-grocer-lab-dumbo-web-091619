require 'pry' 
def consolidate_cart(cart)
   final_hash={}
   
   cart.each do |element_hash|
    element_name = element_hash.keys[0]

    if final_hash.has_key?(element_name)
      final_hash[element_name][:count] += 1 
    else  
      final_hash[element_name] = {
        count: 1,
        price: element_hash[element_name][:price],
        clearance: element_hash[element_name][:clearance]
      }
    end 
  end 
  final_hash
end
 
def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    item = coupon[:item]  
    coupon_item = "#{item} W/COUPON"
    if cart.has_key?(item) 
      if cart[item][:count] >= coupon[:num] 
        if !cart[coupon_item]
          cart[coupon_item] = {count: coupon[:num] 
    end
  end 
 cart 
end

def apply_clearance(cart) 
end

def checkout(cart, coupons)
  # code here
end
