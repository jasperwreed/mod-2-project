class Review < ApplicationRecord
  belongs_to :product
  belongs_to :user

  # highest rating 
  # lowest rating
end
