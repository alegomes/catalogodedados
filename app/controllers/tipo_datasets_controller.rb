class TipoDatasetsController < ApplicationController
  # GET /tipo_datasets
  # GET /tipo_datasets.json
  def index
    @tipo_datasets = TipoDataset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_datasets }
    end
  end

  # GET /tipo_datasets/1
  # GET /tipo_datasets/1.json
  def show
    @tipo_dataset = TipoDataset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_dataset }
    end
  end

  # GET /tipo_datasets/new
  # GET /tipo_datasets/new.json
  def new
    @tipo_dataset = TipoDataset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_dataset }
    end
  end

  # GET /tipo_datasets/1/edit
  def edit
    @tipo_dataset = TipoDataset.find(params[:id])
  end

  # POST /tipo_datasets
  # POST /tipo_datasets.json
  def create
    @tipo_dataset = TipoDataset.new(params[:tipo_dataset])

    respond_to do |format|
      if @tipo_dataset.save
        format.html { redirect_to @tipo_dataset, notice: 'Tipo dataset was successfully created.' }
        format.json { render json: @tipo_dataset, status: :created, location: @tipo_dataset }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_datasets/1
  # PUT /tipo_datasets/1.json
  def update
    @tipo_dataset = TipoDataset.find(params[:id])

    respond_to do |format|
      if @tipo_dataset.update_attributes(params[:tipo_dataset])
        format.html { redirect_to @tipo_dataset, notice: 'Tipo dataset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_datasets/1
  # DELETE /tipo_datasets/1.json
  def destroy
    @tipo_dataset = TipoDataset.find(params[:id])
    @tipo_dataset.destroy

    respond_to do |format|
      format.html { redirect_to tipo_datasets_url }
      format.json { head :no_content }
    end
  end
end
