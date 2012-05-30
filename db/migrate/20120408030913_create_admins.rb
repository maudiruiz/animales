class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :twitter
      t.string :facebook
      t.string :foto

      t.timestamps
    end
  end
end
