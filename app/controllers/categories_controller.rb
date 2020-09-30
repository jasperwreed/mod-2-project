class CategoriesController < ApplicationController

    def show
        @category = Category.find(category_params)
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end
end
