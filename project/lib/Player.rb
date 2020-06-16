class Player < ActiveRecord::Base
    has_many :encounters, dependent: :destroy
    has_many :monsters, through: :encounters
end