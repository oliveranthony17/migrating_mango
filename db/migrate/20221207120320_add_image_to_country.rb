class AddImageToCountry < ActiveRecord::Migration[7.0]
  def change
    add_column :countries, :background, :string
  end
end
