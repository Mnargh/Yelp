class UsersController < ApplicationController
  def new 
  end

  def create
    @user = User.new(user_params)
    
    if @user.valid?
      @user.save
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name, :password)
  end
end