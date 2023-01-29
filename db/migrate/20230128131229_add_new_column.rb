class AddNewColumn < ActiveRecord::Migration[7.0]
  def up
    add_column("admins", "salary", :string)
  end
end
