class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @books = Book.all
  end

  def show
  end
  
  def edit
  end
  
  def destroy
  end
  
end
