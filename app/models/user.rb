class User < ApplicationRecord
    has_many :owned_products, class_name: "Product", foreign_key: "owner_id"
    has_many :reviews

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    validates :first_name, presence: true
    validates :last_name, presence: true
    
    def full_name
        self.first_name + self.last_name
    end

    # deactivate account
    # how many products they have
    # number of users
    # total revenues 
    # lowest cost
    # highest cost
end
