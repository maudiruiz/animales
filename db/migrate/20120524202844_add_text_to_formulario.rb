class AddTextToFormulario < ActiveRecord::Migration
  def change
    add_column :formularios, :historiaAnimal, :text
    add_column :formularios, :espacioActividades, :text
  end
end
