class Pitch < ApplicationRecord
  belongs_to :user
  has_many :goals_pitches
  has_many :goals through :goals_pitches
  has_many :results, as: :resultable
end
