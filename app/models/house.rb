class House < ApplicationRecord
  validates :name, presence: true
  has_many :characters, dependent: :destroy
end
