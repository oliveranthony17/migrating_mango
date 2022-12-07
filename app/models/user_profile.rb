class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_tasks, dependent: :destroy
  belongs_to :avatar


  validates :foreign_address, presence: true
  # validates :foreign_address, length: { minimum: 5 }
  validates :entry_method, presence: true, inclusion: { in: ["Work", "Study", "Family reunification"] }
end
