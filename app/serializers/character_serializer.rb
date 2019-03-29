class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :house
  belongs_to :position
  belongs_to :team
end
