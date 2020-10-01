class Product < ApplicationRecord
    has_many :product_categories, :dependent => :destroy
    has_many :categories, through: :product_categories 
    has_many :reviews
    belongs_to :owner, class_name: "User"

    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
    validates :description, presence: true, length: { minimum: 10}
    validates :owner_id, presence: true
    validates :category_ids, presence: true

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
            category = Category.find_or_create_by(category_attribute)
            self.categories << category
        end
    end

    # average rating
    # most popular item(s)
    # total item(s) overall, and maybe each category?
end

