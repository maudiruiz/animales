class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :especie
      t.string :color
      t.string :pelo
      t.string :tamano
      t.string :caracter
      t.text :observaciones
      t.string :foto
      t.string :protectora
      t.string :status
      t.boolean :destacado

      t.timestamps
    end
  end
end
