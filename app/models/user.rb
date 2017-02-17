class User < ApplicationRecord
  validates :user_name, :presence => true
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
