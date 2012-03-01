class LicencasController < ApplicationController
	
  # GET /licencas
  # GET /licencas.json
  def index
    @licencas = Licenca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @licencas }
    end
  end

  # GET /licencas/1
  # GET /licencas/1.json
  def show
    @licenca = Licenca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @licenca }
    end
  end

  # GET /licencas/new
  # GET /licencas/new.json
  def new
    @licenca = Licenca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @licenca }
    end
  end

  # GET /licencas/1/edit
  def edit
    @licenca = Licenca.find(params[:id])
  end

  # POST /licencas
  # POST /licencas.json
  def create
    @licenca = Licenca.new(params[:licenca])

    respond_to do |format|
      if @licenca.save
        format.html { redirect_to @licenca, notice: 'Licenca was successfully created.' }
        format.json { render json: @licenca, status: :created, location: @licenca }
      else
        format.html { render action: "new" }
        format.json { render json: @licenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /licencas/1
  # PUT /licencas/1.json
  def update
    @licenca = Licenca.find(params[:id])

    respond_to do |format|
      if @licenca.update_attributes(params[:licenca])
        format.html { redirect_to @licenca, notice: 'Licenca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @licenca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /licencas/1
  # DELETE /licencas/1.json
  def destroy
    @licenca = Licenca.find(params[:id])
    @licenca.destroy

    respond_to do |format|
      format.html { redirect_to licencas_url }
      format.json { head :no_content }
    end
  end
end
