class AddIconsToTopics < ActiveRecord::Migration[7.0]
  def change
    add_column :topics, :icon, :string
  end
end
