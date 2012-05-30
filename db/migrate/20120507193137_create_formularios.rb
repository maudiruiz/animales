class CreateFormularios < ActiveRecord::Migration
  def change
    create_table :formularios do |t|
      t.integer :mascota_id
      t.integer :usuario_id
      t.boolean :revisado
      t.boolean :aceptado
      t.string :ocupacion
      t.string :dependencia
      t.string :autorizacion
      t.text :direccion
      t.string :telefono
      t.string :celular

      
      

      t.timestamps
    end
  end
end
