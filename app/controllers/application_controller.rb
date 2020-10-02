class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :fetch_user
    helper_method :current_user
    helper_method :logged_in?
    helper_method :log_out_user!

    def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
    end

    def fetch_user
        @logged_in = logged_in?
        if @logged_in
            @user = User.find_by(id: session[:user_id])
        else
            redirect_to new_user_path
        end
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out_user!
        session.delete(:user_id)
        redirect_to login_path
    end

end
