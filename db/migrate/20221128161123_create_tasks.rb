class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :country, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.integer :order
      t.string :scope
      t.string :eu
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
