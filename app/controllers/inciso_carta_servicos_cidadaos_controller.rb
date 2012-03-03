class IncisoCartaServicosCidadaosController < ApplicationController
  # GET /inciso_carta_servicos_cidadaos
  # GET /inciso_carta_servicos_cidadaos.json
  def index
    @inciso_carta_servicos_cidadaos = IncisoCartaServicosCidadao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inciso_carta_servicos_cidadaos }
    end
  end

  # GET /inciso_carta_servicos_cidadaos/1
  # GET /inciso_carta_servicos_cidadaos/1.json
  def show
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inciso_carta_servicos_cidadao }
    end
  end

  # GET /inciso_carta_servicos_cidadaos/new
  # GET /inciso_carta_servicos_cidadaos/new.json
  def new
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inciso_carta_servicos_cidadao }
    end
  end

  # GET /inciso_carta_servicos_cidadaos/1/edit
  def edit
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.find(params[:id])
  end

  # POST /inciso_carta_servicos_cidadaos
  # POST /inciso_carta_servicos_cidadaos.json
  def create
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.new(params[:inciso_carta_servicos_cidadao])

    respond_to do |format|
      if @inciso_carta_servicos_cidadao.save
        format.html { redirect_to @inciso_carta_servicos_cidadao, notice: 'Inciso carta servicos cidadao was successfully created.' }
        format.json { render json: @inciso_carta_servicos_cidadao, status: :created, location: @inciso_carta_servicos_cidadao }
      else
        format.html { render action: "new" }
        format.json { render json: @inciso_carta_servicos_cidadao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inciso_carta_servicos_cidadaos/1
  # PUT /inciso_carta_servicos_cidadaos/1.json
  def update
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.find(params[:id])

    respond_to do |format|
      if @inciso_carta_servicos_cidadao.update_attributes(params[:inciso_carta_servicos_cidadao])
        format.html { redirect_to @inciso_carta_servicos_cidadao, notice: 'Inciso carta servicos cidadao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inciso_carta_servicos_cidadao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inciso_carta_servicos_cidadaos/1
  # DELETE /inciso_carta_servicos_cidadaos/1.json
  def destroy
    @inciso_carta_servicos_cidadao = IncisoCartaServicosCidadao.find(params[:id])
    @inciso_carta_servicos_cidadao.destroy

    respond_to do |format|
      format.html { redirect_to inciso_carta_servicos_cidadaos_url }
      format.json { head :no_content }
    end
  end
end
