class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :fetch_user

    def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
    end

    def fetch_user
        @logged_in = logged_in?
        if @logged_in
            @user = User.find(session[:user_id])
        else
            redirect_to new_user_path
        end
    end

    def logged_in?
        !!session[:user_id]
    end

    def log_out_user
        session.delete(:user_id)
    end

    # def require_logged_in
    #     return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    # end
end
