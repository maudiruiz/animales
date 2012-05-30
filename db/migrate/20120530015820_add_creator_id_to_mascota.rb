class AddCreatorIdToMascota < ActiveRecord::Migration
  def change
    add_column :mascota, :creator, :integer
  end
end
