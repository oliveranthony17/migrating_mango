class Topic < ApplicationRecord
  belongs_to :country
  has_many :tasks
  # has_many_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true


  def icon
    read_attribute(:icon)&.html_safe
  end
end
