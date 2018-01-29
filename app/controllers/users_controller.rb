class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:name, :last_name)
  end

  def set_user
    @user = User.find(params[:id])
  end

end