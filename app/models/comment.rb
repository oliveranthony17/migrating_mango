class Comment < ApplicationRecord
  belongs_to :topic
  belongs_to :user

  scope :mango_order, -> { order(id: :desc) }
end
