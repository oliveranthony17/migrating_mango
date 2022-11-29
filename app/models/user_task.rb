class UserTask < ApplicationRecord
  belongs_to :user_profile
  belongs_to :task
  validates :status, presence: true
end
