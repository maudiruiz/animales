class DisplayController < ApplicationController
  def index
    @mascotasDestacadas = Mascotum.find(:all, :conditions => {:destacado => true})
 
  end
  def facebook
      omniauth = request.env["omniauth.auth"]
      userExists = User.find_by_email(omniauth.info['email'])
     
    #  raise omniauth.to_yaml
    
    if userExists
      sign_in_and_redirect(:user, userExists)
      puts(userExists)
    else
     user = User.new(params[:user])
     user.email = omniauth.info['email'] 
     user.name = omniauth.info['name'] 
     
     user.foto = omniauth.info['image'] 
     
     user.url = omniauth.info['urls'] 
     
     user.gender = omniauth.extra['gender'] 
     
     #user.password = "mauricio"
   #  user.password = "mauricio"
     
     user.save(:validate => false)
     sign_in_and_redirect(:user, user)
    end
  end

end
