class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :foreign_address
      t.boolean :eu_status
      t.string :entry_method
      t.boolean :has_job_offer
      t.boolean :has_study_offer
      t.boolean :has_relative

      t.timestamps
    end
  end
end
