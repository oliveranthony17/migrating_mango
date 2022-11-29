class Country < ApplicationRecord
  has_many :tasks
  has_many :topics
  validates :name, presence: true
end
