class Protectora < ActiveRecord::Base
#   has_many :mascotas
   #@mis_mascotas = Mascotum.find(:all, :conditions => ["protectora = ?", "RescataPatitas"])

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         

         
   
  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nombre, :responsable,	:twitter, :facebook,	:telefono, :logo,	:zona, :autorizada,	:extra
  has_attached_file :logo, :styles => { :medium => "700x700>", :thumb => "200x150>" }    

end
