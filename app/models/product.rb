class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true

  has_many :reviews
end
