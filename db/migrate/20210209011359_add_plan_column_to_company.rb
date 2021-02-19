class AddPlanColumnToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :plan, :integer, default: 0
  end
end
