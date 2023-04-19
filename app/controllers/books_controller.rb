class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(current_user.id)
  end
  
  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
  　redirect_to'/books'
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
