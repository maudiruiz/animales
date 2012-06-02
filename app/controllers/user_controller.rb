class UserController < ApplicationController
  def currentUser
    

     if  current_user && !current_protectora && !current_admin
       @currentUser = current_user
        @creadorID = current_user.id
        @creator = 0
        @currentUserPass = true
        
      elsif current_protectora && !current_admin
        @currentUser = current_protectora
        
        @creator = 1
        @creadorID = current_protectora.id 
        @currentUserPass = true

      elsif current_admin 
        @currentUser = current_admin
        
        @creator = 2
        @creadorID = current_admin.id
        @currentUserPass = true
        
      end

    
      @misMascotas = Mascotum.find(:all, :conditions => {:protectora => @creadorID,:creator=>@creator})
    
     
        
      
  end

end
