class AddCommentsToUserTask < ActiveRecord::Migration[7.0]
  def change
    add_column :user_tasks, :note, :string, default: "Add note..."
  end
end

# I'll need to make new model for multiple comments
