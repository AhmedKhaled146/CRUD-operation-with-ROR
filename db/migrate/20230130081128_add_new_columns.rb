class AddNewColumns < ActiveRecord::Migration[7.0]
  def change
    add_column("admins", "Fname", :string)
    add_column("admins", "Lname", :string)
    add_column("admins", "password", :string)
    add_column("admins", "position", :string)
  end
end
