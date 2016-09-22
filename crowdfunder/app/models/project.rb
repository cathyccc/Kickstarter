class Project < ApplicationRecord
  has_many :rewards
  has_many :users, through: :rewards
  accepts_nested_attributes_for :rewards

  def all_pledges_total
    rewards.inject(0) {|sum,reward| sum + reward.pledges_total}
  end
end
