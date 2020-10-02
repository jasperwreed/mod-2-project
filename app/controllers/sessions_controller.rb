class SessionsController < ApplicationController
    skip_before_action :fetch_user, only: [:new, :create]
    before_action :current_user, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user) 
        else
            redirect_to login_path
        end
    end

    def destroy
        log_out_user!
    end

end
