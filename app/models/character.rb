class Character < ApplicationRecord
  belongs_to :house
  belongs_to :team
  belongs_to :position
end
