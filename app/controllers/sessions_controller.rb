class SessionsController < ApplicationController
 skip_before_action :verified_user
  def new
  end

  def create
    byebug
    @user = User.find_by(name: params[:name])
    if !@user 
      @error = "Account not found. Please try agaim"
    elsif @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
      @error = "Please Try Again"
      render :new
    end
  end
  
  
  def destroy
    session.delete :user_id
    render 'static/home'
  end

  private
  def auth
    request.env['omniauth.auth']
  end
end
