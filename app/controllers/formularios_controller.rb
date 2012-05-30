class FormulariosController < ApplicationController
  # GET /formularios
  # GET /formularios.json
  def index
    @formularios = Formulario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formularios }
    end
  end

  # GET /formularios/1
  # GET /formularios/1.json
  def show
    @formulario = Formulario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formulario }
    end
  end

  # GET /formularios/new
  # GET /formularios/new.json
  def new
    @formulario = Formulario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formulario }
    end
  end

  # GET /formularios/1/edit
  def edit
    @formulario = Formulario.find(params[:id])
  end

  # POST /formularios
  # POST /formularios.json
  def create
    @formulario = Formulario.new(params[:formulario])

    respond_to do |format|
      if @formulario.save
        format.html { redirect_to @formulario, notice: 'Formulario was successfully created.' }
        format.json { render json: @formulario, status: :created, location: @formulario }
      else
        format.html { render action: "new" }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formularios/1
  # PUT /formularios/1.json
  def update
    @formulario = Formulario.find(params[:id])

    respond_to do |format|
      if @formulario.update_attributes(params[:formulario])
        format.html { redirect_to @formulario, notice: 'Formulario was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @formulario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formularios/1
  # DELETE /formularios/1.json
  def destroy
    @formulario = Formulario.find(params[:id])
    @formulario.destroy

    respond_to do |format|
      format.html { redirect_to formularios_url }
      format.json { head :ok }
    end
  end
end
