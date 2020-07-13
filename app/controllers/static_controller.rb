class StaticController < ApplicationController
    skip_before_action :verified_user, only: [:home]
  
    def home
      @user = User.find_by(id: session[:user_id])
    end
  end