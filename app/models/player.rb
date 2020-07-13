class Player < ApplicationRecord
    has_and_belongs_to_many :clubs
    has_many :users, through: :clubs
    belongs_to :team
    validates :name, presence: true
    validates_uniqueness_of :name
end
