class Reward < ApplicationRecord
  belongs_to :project, optional: true
  has_many :rewards_users
  has_many :users, through: :rewards_users

  def pledges_total
    rewards_users.count * pledge
  end

end
