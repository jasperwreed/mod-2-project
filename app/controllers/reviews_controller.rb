class ReviewsController < ApplicationController
    before_action :set_review, only: [:update, :delete]
    
    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        redirect_to product_path(@review.product)
    end

    def update
        @review.update(review_params)
        redirect_to product_path(@review.product)
    end

    def delete
        @review.destroy(review.params)
    end

    private

    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:rating, :content, :product_id, :user_id)
    end
end
