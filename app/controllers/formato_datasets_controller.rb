class FormatoDatasetsController < ApplicationController

	before_filter :authenticate_user!
	
  # GET /formato_datasets
  # GET /formato_datasets.json
  def index
    @formato_datasets = FormatoDataset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @formato_datasets }
    end
  end

  # GET /formato_datasets/1
  # GET /formato_datasets/1.json
  def show
    @formato_dataset = FormatoDataset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @formato_dataset }
    end
  end

  # GET /formato_datasets/new
  # GET /formato_datasets/new.json
  def new
    @formato_dataset = FormatoDataset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @formato_dataset }
    end
  end

  # GET /formato_datasets/1/edit
  def edit
    @formato_dataset = FormatoDataset.find(params[:id])
  end

  # POST /formato_datasets
  # POST /formato_datasets.json
  def create
    @formato_dataset = FormatoDataset.new(params[:formato_dataset])

    respond_to do |format|
      if @formato_dataset.save
        format.html { redirect_to @formato_dataset, notice: 'Formato dataset was successfully created.' }
        format.json { render json: @formato_dataset, status: :created, location: @formato_dataset }
      else
        format.html { render action: "new" }
        format.json { render json: @formato_dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /formato_datasets/1
  # PUT /formato_datasets/1.json
  def update
    @formato_dataset = FormatoDataset.find(params[:id])

    respond_to do |format|
      if @formato_dataset.update_attributes(params[:formato_dataset])
        format.html { redirect_to @formato_dataset, notice: 'Formato dataset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @formato_dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formato_datasets/1
  # DELETE /formato_datasets/1.json
  def destroy
    @formato_dataset = FormatoDataset.find(params[:id])
    @formato_dataset.destroy

    respond_to do |format|
      format.html { redirect_to formato_datasets_url }
      format.json { head :no_content }
    end
  end
end
