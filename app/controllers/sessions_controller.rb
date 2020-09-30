class SessionsController < ApplicationController

    skip_before_action :fetch_user, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        # user = user.try(:authenticate, params[:user][:password])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to products_path
            # return redirect_to(controller: 'sessions', action: 'new') unless user
        else
            # redirect_to controller: 'product', action: 'home'
            redirect_to new_user_path
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/login'
    end

end
