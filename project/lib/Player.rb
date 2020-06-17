class Player < ActiveRecord::Base
    has_many :encounters, dependent: :destroy
    has_many :monsters, through: :encounters
    # has_many :abilities, through: :jobs
    has_one  :job
end