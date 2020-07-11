class TeamsController < ApplicationController
  before_action :admin?
  skip_before_action :admin?, only: :index

  def new
    @team =Team.new
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def admin?
    unless session[:user_id] = User.find_by(name: "Admin").id
     redirect_to teams_path
    end
  end

end
