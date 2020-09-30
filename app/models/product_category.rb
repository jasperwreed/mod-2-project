class ProductCategory < ApplicationRecord
  belongs_to :category
  belongs_to :product

  # how many categories the product has?
end
