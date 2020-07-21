class UsersController < ApplicationController
  before_action :verified_user
  before_action :this_user, only: :show  
  skip_before_action :verified_user, only: [:new,:create]
  
 
  def new
    @user = User.new
  end

  def create
    #byebug
   if  @user = User.create(users_params)
    session[:user_id] = @user.id  
    redirect_to user_path(session[:user_id])
   else
    render :new
   end
    #byebug
  end

  def show
    @user = this_user
   

  end

  private
  def users_params
    params.require(:user).permit(:name, :password)
  end

  def this_user
    User.find_by(id: session[:user_id])
  end



end
