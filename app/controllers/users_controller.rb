class UsersController < ApplicationController

    skip_before_action :fetch_user, only: [:new, :create]
    before_action :set_user, only: [:show, :edit, :update, :delete]

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to products_path
        else
            redirect_to new_user_path
        end 
    end

    def edit
    end
    
    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        @user.destroy
        redirect_to user_path
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :password, :bio)
    end
end
