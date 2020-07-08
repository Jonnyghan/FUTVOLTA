class Player < ApplicationRecord
    has_and_belongs_to_many :clubs
    has_many :users, through: :clubs
end
