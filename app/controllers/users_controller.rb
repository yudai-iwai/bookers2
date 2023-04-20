class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @newbook = Book.new
  end

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path
  end
  
  def index
    @users = User.all
    @user = current_user
    @newbook = Book.new
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
  
end
