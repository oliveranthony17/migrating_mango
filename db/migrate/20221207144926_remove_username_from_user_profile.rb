class RemoveUsernameFromUserProfile < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_profiles, :username, :string
  end
end
