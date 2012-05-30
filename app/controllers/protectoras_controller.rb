class ProtectorasController < ApplicationController
 before_filter :authenticate_admin!, :except => [:show, :index]  
  # GET /protectoras
  # GET /protectoras.json
  def index
    @protectoras = Protectora.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @protectoras }
    end
  end

  # GET /protectoras/1
  # GET /protectoras/1.json
  def show
   
    @protectora = Protectora.find(params[:id])
    @nombreProtectora = Protectora.find(params[:id]).nombre
    @mis_mascotas = Mascotum.find(:all, :conditions => {:protectora => @nombreProtectora})

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @protectora }
    end
  end

  # GET /protectoras/new
  # GET /protectoras/new.json
  def new
    @protectora = Protectora.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @protectora }
    end
  end

  # GET /protectoras/1/edit
  def edit
    @protectora = Protectora.find(params[:id])
  end

  # POST /protectoras
  # POST /protectoras.json
  def create
    @protectora = Protectora.new(params[:protectora])

    respond_to do |format|
      if @protectora.save
        format.html { redirect_to @protectora, notice: 'Protectora was successfully created.' }
        format.json { render json: @protectora, status: :created, location: @protectora }
      else
        format.html { render action: "new" }
        format.json { render json: @protectora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /protectoras/1
  # PUT /protectoras/1.json
  def update
    @protectora = Protectora.find(params[:id])

    respond_to do |format|
      if @protectora.update_attributes(params[:protectora])
        format.html { redirect_to @protectora, notice: 'Protectora was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @protectora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protectoras/1
  # DELETE /protectoras/1.json
  def destroy
    @protectora = Protectora.find(params[:id])
    @protectora.destroy

    respond_to do |format|
      format.html { redirect_to protectoras_url }
      format.json { head :ok }
    end
  end
end
