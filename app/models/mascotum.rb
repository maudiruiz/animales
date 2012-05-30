class Mascotum < ActiveRecord::Base
  # belongs_to :protectora, :class_name => "Protectora", :foreign_key => :mascotas
      has_attached_file :foto, :styles => { :medium => "700x700>", :thumb => "200x150>" }  
      has_many :formularios, :class_name => "Formulario", :foreign_key => :mascota_id  
      
      
end
