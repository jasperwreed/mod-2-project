class Product < ApplicationRecord
    has_many :product_categories
    has_many :categories, through: :product_categories
    has_many :reviews
    belongs_to :owner, class_name: "User"
end
