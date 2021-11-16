class UsersController < ApplicationController
  def show
    @shoe = Shoe.new
    @shoes = Shoe.all
    @user_shoes = @shoes.where(user: current_user)
  end
end
