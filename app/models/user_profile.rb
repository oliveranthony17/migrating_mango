class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_tasks
end
