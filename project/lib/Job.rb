class Job < ActiveRecord::Base
   belongs_to :player
   has_many   :abilities
end