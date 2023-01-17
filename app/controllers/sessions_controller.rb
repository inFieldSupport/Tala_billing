class SessionsController < ApplicationController
    def create
        user = Employee.find_by(email: params[:sessions][:email])
        if user && user.authenticate(params[:sessions][:password])
          log_in(user)
        else
          flash[:danger]="Failed to login. Enter a valid email/password"
          render 'new'
        end
    end

    def logout
        log_out if logged_in?
        redirect_to root_path
    end
end
