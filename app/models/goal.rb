class Goal < ApplicationRecord
  belongs_to :user
  has_many :goals_pitches
  has_many :pitches, through: :goals_pitches
  has_many :results, as: :resultable

end
