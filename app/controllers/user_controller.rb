class UserController < ApplicationController
  def currentUser
    

     if  current_user && !current_protectora && !current_admin
       @currentUser = current_user
        @creadorID = current_user.id
        @creator = 0
      elsif current_protectora && !current_admin
        @currentUser = current_protectora
        
        @creator = 1
        @creadorID = current_protectora.id 

      elsif current_admin 
        @currentUser = current_admin
        
        @creator = 2
        @creadorID = current_admin.id
      end
      
    
      @misMascotas = Mascotum.find(:all, :conditions => {:protectora => @creadorID,:creator=>@creator})
    
     
        
      
  end

end
