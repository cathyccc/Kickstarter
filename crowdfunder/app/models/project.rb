class Project < ApplicationRecord
  has_many :rewards
  has_many :users, through: :rewards
  accepts_nested_attributes_for :rewards
end
