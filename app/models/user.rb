class User < ApplicationRecord
    has_many :owned_products, class_name: "Product", foreign_key: "owner_id"
    has_many :reviews

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def full_name
        self.first_name + " " + self.last_name
    end

    # deactivate account

    # how many products they have
    def number_of_products_owned
        self.owned_products.count
    end

    # total revenues 

    # highest cost
    def highest_cost
        highest_cost_item = nil
        self.owned_products.each do |owned_product|
            if owned_product.price == owned_product.price.max
                highest_cost_item = owned_product
            end
        end
        highest_cost_item
    end

    # lowest cost
    def lowest_cost
        lowest_cost_item = nil
        self.owned_products.each do |owned_product|
            if owned_product.price == owned_product.price.min
                lowest_cost_item = owned_product
            end
        end
        lowest_cost_item
    end

    def highest_rated_item
        highest_rating = 0
        self.owned_product.each do |owned_product|
            owned_product.each do |product|
                product.reviews.each do |review|
                    if review.rating >= higest_rating && !higest_rating == nil
                        higest_rating = review.rating
                    end
                end
            end
        end
    end
    
end
