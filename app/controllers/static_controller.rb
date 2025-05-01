class StaticController < ApplicationController
  def home
    render json:  { message: "Welcome to the home page!" }
  end
end
