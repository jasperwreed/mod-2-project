class Category < ApplicationRecord
    has_many :product_categories
    has_many :products, through: :product_categories

    # categories in total
    def total_category
        self.count
    end

    # amount of items in a single category
    def total_items
        self.products.count
    end

    # most popular item in the category
    def most_popular_items
        max_rating = 0
        self.products.each do |product|
            if product.average_rating >= max_rating && !product.average_rating == nil
                max_rating = product.average_rating
            end
        end
        max_rating
    end

    # most least item in the category
    def most_least_items
        min_rating = 5.0
        self.products.each do |product|
            if product.average_rating <= min_rating && !product.average_rating == nil
                min_rating = product.average_rating
            end
        end
        min_rating
    end

    





    
end
