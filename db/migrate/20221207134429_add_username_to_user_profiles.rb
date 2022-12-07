class AddUsernameToUserProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :user_profiles, :username, :string
  end
end
