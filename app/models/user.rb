class User < ApplicationRecord
    has_many :owned_products, class_name: "Product", foreign_key: "owner_id"
    has_many :reviews

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def full_name
        if !self.first_name == nil && !self.last_name == nil
            self.first_name + " " + self.last_name
        end
    end

    # deactivate account

    # how many products they have
    def number_of_products_owned
        if !self.owned_products.nil?
            self.owned_products.count
        end
    end

    # total cost
    def total_cost
        if !self.owned_products.nil?
            total_cost = 0
            self.owned_products.each do |owned_product|
                total_cost += owned_product.price
            end
            total_cost
        end
    end

    # lowest cost
    def lowest_cost
        if !self.owned_products.nil?
            lowest_cost_item = self.owned_products.min_by { |owned_product| owned_product.price }
        end
    end

    # highest cost
    def highest_cost
        if !self.owned_products.nil?
            highest_cost_item = self.owned_products.max_by { |owned_product| owned_product.price }
        end
    end

    def avg_cost
        if !self.owned_products.nil?
            average = 0
            total = 0
            self.owned_products.each do |owned_product|
                total += owned_product.price
            end
            average = total / self.owned_products.count if self.owned_products.count > 0
        end
    end
    
end