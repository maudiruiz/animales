class MascotaController < ApplicationController
  # GET /mascota
  # GET /mascota.json
  before_filter :authorize, :except => [:index,:show]  


  def authorize
    redirect_to "/" unless current_admin || current_user || current_protectora && current_protectora.autorizada 
    flash[:notice] = 'No tiene suficientes permisos para acceder aqui' unless current_admin || current_user  || current_protectora && current_protectora.autorizada
  end



 
  def index
    @mascota = Mascotum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mascota }
    end
  end

  # GET /mascota/1
  # GET /mascota/1.json
  def show
    @mascotum = Mascotum.find(params[:id])
    if @mascotum.creator == 0
    @protectora = User.find(:all, :conditions => {:id => @mascotum.protectora})[0].name
    elsif @mascotum.creator == 1
    @protectora = Protectora.find(:all, :conditions => {:id => @mascotum.protectora})[0].nombre
    elsif @mascotum.creator == 2
      @protectora = Admin.find(:all, :conditions => {:id => @mascotum.protectora})[0].email
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mascotum }
        @formulario = Formulario.new
    end
  end

  # GET /mascota/new
  # GET /mascota/new.json

  def new
    if  current_user && !current_protectora && !current_admin
      @creadorID = current_user.id
      @creator = 0
    elsif current_protectora && !current_admin
      @creator = 1
      @creadorID = current_protectora.id 
    
    elsif current_admin 
      @creator = 2
      @creadorID = current_admin.id
    end
    
    
    @destacados = false
    @mascotum = Mascotum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mascotum }
    end
  end

  # GET /mascota/1/edit
  def edit
     
    @mascotum = Mascotum.find(params[:id])
    @creator = @mascotum.creator
    @creadorID = @mascotum.protectora
    
    @destacados = @mascotum.destacado
    if @mascotum.creator == 0 && @mascotum.protectora.to_i == current_user.id
    @pass = true
    
    elsif @mascotum.creator == 1 && protectora_signed_in? && @mascotum.protectora.to_i == current_protectora.id
     @pass = true
     
     elsif @mascotum.creator == 2 && @mascotum.protectora.to_i == current_admin.id
      @pass = true
    elsif admin_signed_in?
      @pass = true
      
      
    end
    

    
  end

  # POST /mascota
  # POST /mascota.json
  def create
    @mascotum = Mascotum.new(params[:mascotum])

    respond_to do |format|
      if @mascotum.save
        format.html { redirect_to @mascotum, notice: 'Mascotum was successfully created.' }
        format.json { render json: @mascotum, status: :created, location: @mascotum }
      else
        format.html { render action: "new" }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mascota/1
  # PUT /mascota/1.json
  def update
    @mascotum = Mascotum.find(params[:id])

    respond_to do |format|
      if @mascotum.update_attributes(params[:mascotum])
        format.html { redirect_to @mascotum, notice: 'Mascotum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @mascotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mascota/1
  # DELETE /mascota/1.json
  def destroy
    @mascotum = Mascotum.find(params[:id])
    @mascotum.destroy

    respond_to do |format|
      format.html { redirect_to mascota_url }
      format.json { head :ok }
    end
  end
end
