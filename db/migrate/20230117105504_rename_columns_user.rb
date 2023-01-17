class RenameColumnsUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :user_name
    rename_column :users, :price, :user_price
    rename_column :users, :type, :user_type
  end
end
