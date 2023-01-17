class RenameColumnsEmployee < ActiveRecord::Migration[7.0]
  def change
    rename_column :employees, :name, :employee_name
  end
end
