class User < ApplicationRecord
  before_destroy :delete_team
  has_one :team

  private

  def delete_team
    self.team && self.team.destroy
  end
end
