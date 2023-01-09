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
    @book_new = Book.new
    @book = Book.find(params[:id])
    @user = current_user
  end

  def create
    @book = Book.new(book_params)
    @user = current_user.id
    @book.user_id = @user
    if @book.save
      redirect_to book_path(@book.id)
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    end
  end

   private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
