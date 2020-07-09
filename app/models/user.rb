class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates_uniqueness_of :name
    has_many :clubs
    has_many :players, through: :clubs
end
