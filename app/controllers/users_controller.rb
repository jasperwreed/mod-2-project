class UsersController < ApplicationController

    before_action :set_user, only: [:show, :edit, :update, :delete]

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to @user
    end

    def edit
    end
    
    def update
        @user.update(user_params)
        redirect_to @user
    end

    def delete
        @user.destroy
        redirect_to user_path # custom path, options to continue, go back etc.
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :bio, :password, :password_confirmation)
    end
end
