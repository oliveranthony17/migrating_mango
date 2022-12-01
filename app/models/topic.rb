class Topic < ApplicationRecord
  belongs_to :country
  has_many :tasks

  validates :title, presence: true
  validates :content, presence: true


  def icon
    read_attribute(:icon)&.html_safe
  end
end
