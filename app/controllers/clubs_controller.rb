class ClubsController < ApplicationController
  
  before_action :owner?, only: [:edit, :update,:destroy]
  before_action :players_to_club, only: [:new,:create,:edit,:update]
  
  
  
  def new
    @club = Club.new
    
  end

  def create
    @club = Club.new(name: club_params['name'])
   if @club.save 
    #byebug
    club_params['club_players'].values.each{|f| @club.players << Player.find_by(id:f)}
    redirect_to user_club_path(@club)
   else
    #byebug
    
    render 'new'
   end
  end

  def index
    @club = Club.all
  end
    
    
  def show
    @club = current_club
  end

  def edit
    @club = current_club

  end

  def update
    @club = current_club
  end

  def destroy
  end

  private
  def club_params
    params.require(:club).permit(:name, {club_players:[:Fwd, :Mid, :Def, :GK, :any]})
  end
  
  def players_to_club
    @fo=Player.all.where(position: "Fwd")
    @m= Player.all.where(position: "Mid")
    @d= Player.all.where(position: "Def")
    @g= Player.all.where(position: "GK")
    @o= Player.all.where.not(position: "GK")
    
  end
  
  def current_club
    Club.find_by(params[:id])
  end

  def owner?
    unless current_club.id = session[:user_id]
      redirect to '/'
    end
  end
  
end
  



