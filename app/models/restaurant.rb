class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :phone_number, :description, :category, presence: true
end
