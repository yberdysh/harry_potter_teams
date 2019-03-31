class User < ApplicationRecord
  validates_presence_of :name
  before_destroy :delete_team
  has_one :team

  private

  def delete_team
    self.team && self.team.destroy
  end
end
