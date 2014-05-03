class Product < ActiveRecord::Base
  attr_accessible :author, :description, :image_url, :isbn, :price, :title
  
	validates :title, :author, :isbn, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :isbn, :uniqueness => true
	validates_format_of :image_url,	:with => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.'
end
