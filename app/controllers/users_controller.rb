class UsersController < ApplicationController
　def index
　end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def 
    @user = User.find(params[:id])
  end
end
