class AddNewColums < ActiveRecord::Migration[7.0]
  def change
    add_column("admins", "age", :integer)
  end
end
