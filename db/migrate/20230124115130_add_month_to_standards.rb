class AddMonthToStandards < ActiveRecord::Migration[7.0]
  def change
    add_column :standards, :month, :integer
  end
end
