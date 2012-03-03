class CartaServicosCidadaosController < ApplicationController
  # GET /carta_servicos_cidadaos
  # GET /carta_servicos_cidadaos.json
  def index
    @carta_servicos_cidadaos = CartaServicosCidadao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carta_servicos_cidadaos }
    end
  end

  # GET /carta_servicos_cidadaos/1
  # GET /carta_servicos_cidadaos/1.json
  def show
    @carta_servicos_cidadao = CartaServicosCidadao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carta_servicos_cidadao }
    end
  end

  # GET /carta_servicos_cidadaos/new
  # GET /carta_servicos_cidadaos/new.json
  def new
    @carta_servicos_cidadao = CartaServicosCidadao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carta_servicos_cidadao }
    end
  end

  # GET /carta_servicos_cidadaos/1/edit
  def edit
    @carta_servicos_cidadao = CartaServicosCidadao.find(params[:id])
  end

  # POST /carta_servicos_cidadaos
  # POST /carta_servicos_cidadaos.json
  def create
    @carta_servicos_cidadao = CartaServicosCidadao.new(params[:carta_servicos_cidadao])

    respond_to do |format|
      if @carta_servicos_cidadao.save
        format.html { redirect_to @carta_servicos_cidadao, notice: 'Carta servicos cidadao was successfully created.' }
        format.json { render json: @carta_servicos_cidadao, status: :created, location: @carta_servicos_cidadao }
      else
        format.html { render action: "new" }
        format.json { render json: @carta_servicos_cidadao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carta_servicos_cidadaos/1
  # PUT /carta_servicos_cidadaos/1.json
  def update
    @carta_servicos_cidadao = CartaServicosCidadao.find(params[:id])

    respond_to do |format|
      if @carta_servicos_cidadao.update_attributes(params[:carta_servicos_cidadao])
        format.html { redirect_to @carta_servicos_cidadao, notice: 'Carta servicos cidadao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carta_servicos_cidadao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carta_servicos_cidadaos/1
  # DELETE /carta_servicos_cidadaos/1.json
  def destroy
    @carta_servicos_cidadao = CartaServicosCidadao.find(params[:id])
    @carta_servicos_cidadao.destroy

    respond_to do |format|
      format.html { redirect_to carta_servicos_cidadaos_url }
      format.json { head :no_content }
    end
  end
end
