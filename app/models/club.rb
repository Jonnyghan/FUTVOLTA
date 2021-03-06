class Club < ApplicationRecord
   
    belongs_to :user
    has_and_belongs_to_many :players
    validates_presence_of :user_id,:name
    validates_uniqueness_of :name
    has_many :teams, through: :players

    def club_players(params)
      self.players = params['club']['club_player'].values
    end
end
