class Goal < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :pitches
  has_many :results, as: :resultable

end
