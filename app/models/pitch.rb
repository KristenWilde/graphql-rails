class Pitch < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :goals
  has_many :results, as: :resultable
end
