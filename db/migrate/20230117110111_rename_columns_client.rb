class RenameColumnsClient < ActiveRecord::Migration[7.0]
  def change
    rename_column :clients, :name, :client_name
  end
end
