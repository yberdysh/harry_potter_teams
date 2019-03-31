class Team < ApplicationRecord
  belongs_to :user
  has_many :characters
  before_destroy :remove_chars

  private
  def remove_chars
    self.characters.each do |character|
      character.update(team_id: nil)
    end
  end
end
