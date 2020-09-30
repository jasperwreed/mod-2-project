class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories

    # how many items in each category
end
