class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories

    # amount of items in a single category
    def total_items
        self.products.count
    end

    # item with highest rating
    def highest_category_item_rating
        rated_highest = self.products.select { |product| product.highest_rating }
    end

    # lowest rated item in category
    def lowest_category_item_rating
        rated_lowest = self.products.select { |product| product.lowest_rating }
    end
    
end
