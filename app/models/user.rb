class User < ApplicationRecord
    has_many :owned_products, class_name: "Product", foreign_key: "owner_id"
    has_many :reviews

    has_secure_password

    validates :name, presence: true, uniqueness: true
    validates :password, presence: true
    
    # deactivate account
    # how many products they have
    # number of users
    # total revenues 
    # lowest cost
    # highest cost
end
