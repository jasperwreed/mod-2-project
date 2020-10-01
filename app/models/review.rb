class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :rating, presence: true, :inclusion => 0.01..5.00 
  validates :content, presence: true, length: { minimum: 20 }
  validates :product_id, presence: true
  validates :user_id, presence: true
  # highest rating 
  # lowest rating

  def highest rating 
end
