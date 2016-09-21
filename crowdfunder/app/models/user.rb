class User < ApplicationRecord
  has_many :rewards
  has_many :owned_projects, class_name: Project
end
