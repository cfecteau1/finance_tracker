class UsersController < ApplicationController
  def my_portfolio
    @user_stocks = current_user.stocks 
    @user = current_user # restricts actions based on having @user as current user
  end
  
end