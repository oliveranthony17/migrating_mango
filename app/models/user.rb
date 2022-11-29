class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_profile, dependent: :destroy

  validates :reset_password_token, presence: true
  validates :reset_password_sent_at, presence: true
  validates :remember_created_at, presence: true
end
