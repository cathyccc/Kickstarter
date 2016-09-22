class Project < ApplicationRecord
  has_many :rewards
  has_many :users, through: :rewards
  belongs_to :owner, class_name: User, foreign_key: "user_id"
  accepts_nested_attributes_for :rewards
end
