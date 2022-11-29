class CreateUserTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tasks do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
