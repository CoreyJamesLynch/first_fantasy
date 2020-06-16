class Player < ActiveRecord::Base
    has_many :encounters
    has_many :monsters, through: :encounters
end