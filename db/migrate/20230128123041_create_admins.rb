class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.timestamps
    end
  end
  # def down
  #   drop_table :admins
  # end
end
