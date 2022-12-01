class Task < ApplicationRecord
  belongs_to :country
  belongs_to :topic
  has_many :user_tasks

  validates :title, presence: true
  validates :content, presence: true
  validates :scope, presence: true
  validates :order, presence: true
end
