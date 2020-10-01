class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_action :current_user, only: [:index]
    # before_action :require_logged_in
    # skip_before_action :, only: [:index]

    def index
        @products = Product.all
        @category = Category.all
        @cart = cart
    end
    
    def show
    end

    def new
        @product = Product.new
        @category = Category.all
    end

    def create
        @product = Product.create(product_params)
        if @product.valid?
            redirect_to @product
        else
            flash[:errors] = @review.errors.full_messages
            redirect_to new_product_path
        end
    end

    def edit
    end
    
    def update
        @product.update(product_params)
        if @product.valid?
            redirect_to @product
        else
            flash[:errors] = @product.errors.full_messages
            redirect_to edit_product_path
        end
    end

    def destroy
        @product.destroy
        redirect_to product_path 
    end

    def add
        cart << product_params
        redirect_to products_path
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :price, :description, :owner_id, category_ids: [], categories_attributes: [:name])
    end
end
