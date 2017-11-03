class UserController < ApplicationController
    def register
    end

    def login
        params.require(:user_name)
        params.require(:password)
        session[:full_name] = params[:full_name]
        session[:street] = params[:street]
        session[:city] = params[:city]
        session[:state] = params[:state]
        session[:postal] = params[:postal]
        session[:country] = params[:country]
        session[:email] = params[:email]
        session[:user_name] = params[:user_name]
        session[:password] = params[:password]
        @user = User.new(session[:full_name], session[:street], session[:city], session[:state], session[:postal], session[:country], session[:email], session[:user_name], session[:password])
        session[:user] = @user.to_yaml
    end

    def validate_user
        flash[:alert] = ""
        @user = YAML.load(session[:user])
        if params.has_key?(:validate_user)
            if params[:user_log] == @user.user_name && params[:pass_log] == @user.password
                redirect_to "/logout"
            else
                flash[:alert] = "Please enter valid credentials"
                render 'login.html.erb'
            end
        end
    end

    def logout
    end
end
