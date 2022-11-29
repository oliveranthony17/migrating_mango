class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_tasks, dependent: :destroy
  validates :foreign_address, presence: true
  validates :foreign_adress, length: { minimum: 10 }
  validates :foreign_address, format: { with: /\A(?!^\d+$)/ }
  validates :eu_status, presence: true
  validates :entry_method, presence: true
  validates :has_job_offer, presence: true
  validates :has_study_offer, presence: true
  validates :has_relative, presence: true
end
