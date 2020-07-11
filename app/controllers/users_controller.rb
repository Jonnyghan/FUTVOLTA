class UsersController < ApplicationController
  before_action :verified_user
  before_action :this_user, only: :show  
  skip_before_action :verified_user, only: [:new,:create]
  
 
  def new
    @user = User.new
  end

  def create
   if  @user = User.create(users_params)
    @user.id = session[:user_id]
    redirect_to new_user_club_path(@user)
   else
    render :new
    #byebug
  end

  def show
    @user = this_user
    @clubs = @user.clubs
    @teams = @user.teams

  end

  private
  def users_params
    params.require(:user).permit(:name, :password)
  end

  def this_user
    User.find_by(id: session[:user_id])
  end



end
