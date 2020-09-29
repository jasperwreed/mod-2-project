class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :delete]

    def index
        @products = Product.all
    end
    
    def show
    end

    def new
        @product = Product.new
        @category = Category.all
    end

    def create
        @product = Product.create(product_params)
        redirect_to @product
    end

    def edit
    end
    
    def update
        @product.update(product_params)
        redirect_to @product
    end

    def delete
        @product.destroy
        redirect_to product_path 
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :price, :description, :owner_id)
    end
end
