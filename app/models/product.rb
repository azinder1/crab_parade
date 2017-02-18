class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  has_attached_file :product_picture, styles: { medium: "400x400>", thumb: "200x200>" }
  validates_attachment_content_type :product_picture, content_type: /\Aimage\/.*\z/
  has_many :reviews
end
