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


    def lowest_rating
        lowest_rated_review = self.reviews.min_by { |reviews| reviews.rating }
    end

    def highest_rating
        highest_rated_review = self.reviews.max_by { |reviews| reviews.rating }
    end

    def backwards_sort
       highest_rated_review = self.reviews.sort_by { |reviews| reviews.rating }
    end
    
end

