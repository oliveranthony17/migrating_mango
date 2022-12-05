class AddAvatarToUserProfile < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_profiles, :avatar, foreign_key: true
  end
end
