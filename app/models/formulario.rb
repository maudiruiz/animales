class Formulario < ActiveRecord::Base
  belongs_to :usuario , :class_name => "User", :foreign_key => :usuario_id  
  belongs_to :mascota , :class_name => "Mascotum", :foreign_key => :mascota_id  
  
  
end
