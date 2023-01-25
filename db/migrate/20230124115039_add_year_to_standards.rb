class AddYearToStandards < ActiveRecord::Migration[7.0]
  def change
    add_column :standards, :year, :integer
  end
end
