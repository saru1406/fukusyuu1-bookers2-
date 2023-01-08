class UsersController < ApplicationController
  
  def index
    @book_new = Book.new
    @users = User.all
    @user = current_user
  end
  
  def edit
  end
  
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @book = @user.books.all
  end
  
  def update
  end
  
  def destroy
  end
  
end
