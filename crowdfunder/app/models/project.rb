class Project < ApplicationRecord
  has_many :rewards
  has_many :users, through: :rewards
  belongs_to :owner, class_name: User, foreign_key: "user_id"
  accepts_nested_attributes_for :rewards

  def all_pledges_total
    rewards.inject(0) {|sum,reward| sum + reward.pledges_total}
  end
end
