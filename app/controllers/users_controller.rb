class UsersController < ApplicationController
  
  def index
    @book_new = Book.new
    @users = User.all
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def show
    @book_new = Book.new
    @user = User.find(params[:id])
    @book = @user.books.all
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
