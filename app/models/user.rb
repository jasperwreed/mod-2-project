class User < ApplicationRecord
    has_many :owned_products, class_name: "Product", foreign_key: "owner_id"
    has_many :reviews

    # username
    # password
    # deactivate account
end
