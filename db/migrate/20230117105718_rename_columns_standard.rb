class RenameColumnsStandard < ActiveRecord::Migration[7.0]
  def change
    rename_column :standards, :name, :standard_name
    rename_column :standards, :price, :standard_price
    rename_column :standards, :type, :standard_type
  end
end
