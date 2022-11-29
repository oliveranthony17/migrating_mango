class Task < ApplicationRecord
  belongs_to :country
  belongs_to :category
  has_many :user_tasks
  validates :title, presence: true
end
