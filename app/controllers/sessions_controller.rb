class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[user][:email])
               .try(:authenticate, params[user][:password])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: { message: "Logged in successfully!" }, status: :ok
        else
            render json: { error: "Invalid email or password" }, status: :unauthorized
        end
    end 
end
