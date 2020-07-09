class ClubsController < ApplicationController
  before_action :current_club
  before_action :owner?
  skip_before_action :current_club, only: [:new,:create]
  skip_before_action :owner?, only: [:new,:create, :show]
  
  def new
    @club = Club.new
    @f=forwards
    @m=midfielders
    @d=defenders
    @g=goalies
    @o=outfield
  end

  def create
    @club = Club.create(params[:club])
  end

  def show
    
  end

  def edit
    

  end

  def update
  end

  def destroy
  end

  private
  def current_club
    @club = Club.find_by(params[:id])
  end

  def owner?
    unless current_club.id = session[:user_id]
      redirect to '/'
    end
  end

  def forwards
    Player.all.where(position: "Fwd")
  end
  def midfielders
    Player.all.where(position: "Mid")
  end
  def defenders
    Player.all.where(position: "Def")
  end
  def goalies
    Player.all.where(position: "GK")
  end
  def outfield
    !Player.all.where(position: "GK")
  end
end
