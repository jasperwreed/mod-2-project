class User < ApplicationRecord
    has_many :product_owners, class_name: "Product", foreign_key: "user_id"
end
