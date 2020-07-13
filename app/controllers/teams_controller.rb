class TeamsController < ApplicationController

  
  
  def index
    @teams = Team.all
  end

  def show
   @team = this_team
    team_players
  end


 private

 def team_players
  #byebug
  @fo=this_team.players.all.where(position: "Fwd")
  @m= this_team.players.all.where(position: "Mid")
  @d= this_team.players.all.where(position: "Def")
  @g= this_team.players.all.where(position: "GK")
  @o= this_team.players.all.where.not(position: "GK")
end

def this_team
  Team.find_by(id: params[:id])
end
end
