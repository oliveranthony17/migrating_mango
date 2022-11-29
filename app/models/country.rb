class Country < ApplicationRecord
  has_many :tasks
  has_many :topics
  validates :name, presence: true
  validates :content, presence: true
  validates :order, presence: true
  validates :scope, presence: true
end
