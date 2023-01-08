class BooksController < ApplicationController

  def index
    @book_new = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = current_user
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @user = current_user.id
    @book.user_id = @user
    if @book.save
      redirect_to
    end
  end

  def update
  end

  def destroy
  end

   private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
