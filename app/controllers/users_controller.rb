class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def index
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
  end

  def destroy
    find_user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :age, allergen_ids: [])
  end

end #end of UsersController
