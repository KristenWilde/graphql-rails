class Result < ApplicationRecord
  belongs_to :resultable, polymorphic: true
end
