class Product < ApplicationRecord
    has_many :product_categories, :dependent => :destroy
    has_many :categories, through: :product_categories 
    has_many :reviews
    belongs_to :owner, class_name: "User"

    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
    validates :description, presence: true, length: { minimum: 10}
    validates :owner_id, presence: true

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
            category = Category.find_or_create_by(category_attribute)
            self.categories << category
        end
    end

    # Total Categories of a single product
    def total_category
        self.categories.count
    end

    # average rating
    def avg_rating
        average = 0
        total = 0
        self.reviews.each do |review|
            total += review.rating
        end
        average = total / self.reviews.count
    end

    # most reviewed items
    def most_reviewed_items
        self.reviews.max
    end

    def highest_rating
        highest_rating = 0
        self.reviews.each do |review|
            if review.rating >= higest_rating && !review.rating == nil
                higest_rating = review.rating
            end
        end
    end

    def lowest_rating
        highest_rating = 5.0
        self.reviews.each do |review|
            if review.rating >= lowest_rating && !review.rating == nil
                lowest_rating = review.rating
            end
        end
    end
    
end

