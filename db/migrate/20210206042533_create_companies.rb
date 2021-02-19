class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.json :features_enabled, default: {}

      t.timestamps
    end
  end
end
