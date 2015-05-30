class UsersController < ApplicationController
 before_action :check_if_admin, :only => [:index] #could add methods like destroy if they're present

  def index
    #only used by admins
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # unlesss @user.name.present?
    #   render :some_error
    @user = User.new user_params
    if @user.save
      #if you make an account correctly
      redirect_to root_path
    else
      #if you fuck up
      render :new
    end
  end

  def edit
    @user = @current_user
    #allows you to edit other users:
    #@user = User.find params[:id]
    render :new
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? & @current_user.admin?
  end
end
