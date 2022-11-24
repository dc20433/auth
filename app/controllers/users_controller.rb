class UsersController < ApplicationController
  before_action :authenticate, except: [:new, :create]
  before_action :load_user, except: [:new, :index, :create]

  def index
    @users = User.all
  end
  
  def show
  end
  
  def edit
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      login(@user)
      redirect_to users_path, notice: "#{@user.name} is successfully signed up."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if User.find(id=params[:id]).update user_params
      redirect_to users_path, notice: "User updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    User.find(  id=params[:id]).destroy
    redirect_to users_path, alert: "User deleted."
  end

  private

  def load_user
    @user =User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
