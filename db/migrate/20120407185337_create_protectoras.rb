class CreateProtectoras < ActiveRecord::Migration
  def change
    create_table :protectoras do |t|
      t.string :nombre
      t.string :responsable
  #   t.string :email
      t.string :twitter
      t.string :facebook
      t.string :telefono
      t.string :logo
      t.string :zona
      t.boolean :autorizada
      t.string :extra

      t.timestamps
    end
  end
end
