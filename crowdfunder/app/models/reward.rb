class Reward < ApplicationRecord
  belongs_to :project
  has_many :users
end
