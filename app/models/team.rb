class Team < ApplicationRecord
    has_many :players
    has_many :clubs, through: :players
    validates :name, presence: true
    validates_uniqueness_of :name
end
