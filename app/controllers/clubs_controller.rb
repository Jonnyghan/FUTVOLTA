class ClubsController < ApplicationController
  
  before_action :owner?, only: [:edit, :update,:destroy]
  before_action :players_to_club, only: [:new,:create,:edit,:update]
  before_action :club_players, only: [:show]
  
  
  
  def new
    @club = Club.new
    
  end

  def create
   # byebug
    user = User.find_by(id: session[:user_id])
    ## Not using build because I need the extra 'correct_players' validation
    @club = user.clubs.new(name: club_params['name'])
    if  correct_players(club_params['club_players']) &&  @club.save
    #byebug
    club_params['club_players'].values.each{|f| @club.players << Player.find_by(id:f)}
    redirect_to user_club_path( @club.user_id, @club.id)
   else
    #byebug
    @oopsie = 'Check that you have selected five(5) unique players'
    render 'new'
   end
  end

  def index
    @user = User.find_by(id: session[:user_id])
    @clubs = Club.all.reverse
    @user_clubs = Club.all.where(user_id: session[:user_id])
  end
    
    
  def show
    @club = current_club
    formation
    @user = User.find_by(id: @club.user_id)
  end

  def edit
    #byebug
    @club = current_club

  end

  def update
    @club = current_club
    if  correct_players(club_params['club_players']) && @club.update(name: club_params['name'])
    @club.players.clear
      #byebug
      club_params['club_players'].values.each{|f| @club.players << Player.find_by(id: f)}
      redirect_to user_club_path( @club.user_id, @club.id) 
    else
      @oopsie = 'Check that you have selected five(5) unique players'
      render 'edit'
    end
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
  
  def club_players
    #byebug
    @fo=current_club.players.all.where(position: "Fwd")
    @m= current_club.players.all.where(position: "Mid")
    @d= current_club.players.all.where(position: "Def")
    @g= current_club.players.all.where(position: "GK")
    @o= current_club.players.all.where.not(position: "GK")
  end
  
  def current_club
    #byebug
    Club.find_by(id: params[:id])
  end

  def owner?
    unless current_club.id = session[:user_id]
      redirect to '/'
     end
  end
  
  def correct_players(a)
 #byebug
  if a != nil && a.values.length == 5 && a.values.uniq.length == 5
    true
    else
      false
    end
  end

  def formation
    club_players
    if @fo.length == 2
      @formation = "the 'Y'! Two Forwards, One Midfielder, One Defender.
       Perfect for overloading defenses with heavy attacking play!"
    elsif @m.length == 2
      @formation = "the 'Diamond'! One Forward, Two Midfielders, One Defender. 
      Great, balanced formation for attack and defence!"
    else
      @formation = "the 'Pyramid'! One Forward, One Midfielder, Two Defenders. 
      Heavily defensive, great for frustrating opposing forwards!"
    end
  end

end

  



