class Product < ActiveRecord::Base
  attr_accessible :author, :description, :image_url, :isbn, :price, :title
end
