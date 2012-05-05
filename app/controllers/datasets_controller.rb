class DatasetsController < ApplicationController
	
  # GET /datasets
  # GET /datasets.json
  def index
    #@datasets = Dataset.all
		@datasets = Dataset.paginate(:page => params[:page], :limit => 15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datasets }
    end
  end

  # GET /datasets/1
  # GET /datasets/1.json
  def show
    @dataset = Dataset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dataset }
    end
  end

  # GET /datasets/new
  # GET /datasets/new.json
  def new
    @dataset = Dataset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dataset }
    end
  end

  # GET /datasets/1/edit
  def edit
    @dataset = Dataset.find(params[:id])
			@formato_dataset_id = []

		if @dataset && @dataset.formato_datasets
      @dataset.formato_datasets.each do |formato|
				@formato_dataset_id << formato.id
			end
		end
  end

  # POST /datasets
  # POST /datasets.json
  def create
    @dataset = Dataset.new(params[:dataset])

		if params[:formato_dataset_id]
			params[:formato_dataset_id].each do |formato_id|
				@dataset.formato_datasets << FormatoDataset.find(formato_id)
			end
		end

    respond_to do |format|
      if @dataset.save
        format.html { redirect_to @dataset, notice: 'Dataset was successfully created.' }
        format.json { render json: @dataset, status: :created, location: @dataset }
      else
        format.html { render action: "new" }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datasets/1
  # PUT /datasets/1.json
  def update
    @dataset = Dataset.find(params[:id])

		@dataset.formato_datasets.clear
		if params[:formato_dataset_id]
			params[:formato_dataset_id].each do |formato_id|
				@dataset.formato_datasets << FormatoDataset.find(formato_id)
			end
		end

    respond_to do |format|
      if @dataset.update_attributes(params[:dataset])
        format.html { redirect_to @dataset, notice: 'Dataset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasets/1
  # DELETE /datasets/1.json
  def destroy
    @dataset = Dataset.find(params[:id])
    @dataset.destroy

    respond_to do |format|
      format.html { redirect_to datasets_url }
      format.json { head :no_content }
    end
  end

	def search
		q = params[:term]
				
		if(q && !q.empty?)
			@datasets = Dataset.com_nome_semelhante_a(q).paginate(:page => params[:page], :limit => 15)
		else
			@datasets = Dataset.paginate(:page => params[:page], :limit => 15)
		end

	end

end
