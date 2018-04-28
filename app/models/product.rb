class Product < ApplicationRecord
  scope(:product_name, -> (name) { where("LOWER(name) like ?", "%#{name.downcase}%")})
  scope(:description, -> (description) { where("LOWER(description) like ?", "%#{description.downcase}%")})
  scope(:price, -> (price) { where price: price })
end
