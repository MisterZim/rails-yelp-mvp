class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: %w(french italian chinese japanese belgian),
    message: "%{value} is not a valid size" }
end
