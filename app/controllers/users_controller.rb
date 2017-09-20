class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id 
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def show 
    @user = User.find(params[:id])
    @recipes = @user.recipes
  end

private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
