class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_tasks, dependent: :destroy
  validates :foreign_address, presence: true
  validates :foreign_address, length: { minimum: 10 }
  validates :foreign_address, format: { with: /\A(?!^\d+$)/ }
  # validates :eu_status, presence: true #! breaking seed file
  validates :entry_method, presence: true
  # validates :has_job_offer, presence: true #! breaking seed file
  # validates :has_study_offer, presence: true #! breaking seed file
  validates :has_relative, presence: true
end
