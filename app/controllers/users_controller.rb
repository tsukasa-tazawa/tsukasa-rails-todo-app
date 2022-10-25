class UsersController < ApplicationController
  before_action :autheniticate_user, only: [:index, :show]
  before_action :forbid_login_user, only: [:show]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    log_in @user
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end