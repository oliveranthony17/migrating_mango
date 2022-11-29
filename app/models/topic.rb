class Topic < ApplicationRecord
  belongs_to :country
  validates :title, presence: true
  validates :content, presence: true
end
