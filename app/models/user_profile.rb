class UserProfile < ApplicationRecord
  belongs_to :user
  has_many :user_tasks, dependent: :destroy
  validates :foreign_address, presence: true
  validates :foreign_address, length: { minimum: 10 }
  validates :foreign_address, format: { with: /\A(?!^\d+$)/ }
  validates :entry_method, presence: true

end
