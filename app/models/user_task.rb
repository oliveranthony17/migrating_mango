class UserTask < ApplicationRecord
  belongs_to :user_profile
  belongs_to :task
end
