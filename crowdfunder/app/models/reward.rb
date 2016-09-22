class Reward < ApplicationRecord
  belongs_to :project, optional: true
  has_many :rewards_users
  has_many :users, through: :rewards_users

end
