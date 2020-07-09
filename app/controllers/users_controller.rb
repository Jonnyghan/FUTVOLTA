class UsersController < ApplicationController
  skip_before_action :verified_user, only: [:new,:create]
  def new
    @user = User.new
  end

  def create

  end

  def show
  end
end
