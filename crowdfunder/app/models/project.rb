class Project < ApplicationRecord
  has_many :rewards
  has_many :users, through: :rewards
end
