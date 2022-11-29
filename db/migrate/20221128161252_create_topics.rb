class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.references :country, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
