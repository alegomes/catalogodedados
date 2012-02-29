class SiorgsController < ApplicationController
  # GET /siorgs
  # GET /siorgs.json
  def index
    #@siorgs = Siorg.all
		@siorgs = Siorg.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @siorgs }
    end
  end

  # GET /siorgs/1
  # GET /siorgs/1.json
  def show
    @siorg = Siorg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @siorg }
    end
  end

  # GET /siorgs/new
  # GET /siorgs/new.json
  def new
    @siorg = Siorg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @siorg }
    end
  end

  # GET /siorgs/1/edit
  def edit
    @siorg = Siorg.find(params[:id])
  end

  # POST /siorgs
  # POST /siorgs.json
  def create
    @siorg = Siorg.new(params[:siorg])

    respond_to do |format|
      if @siorg.save
        format.html { redirect_to @siorg, notice: 'Siorg was successfully created.' }
        format.json { render json: @siorg, status: :created, location: @siorg }
      else
        format.html { render action: "new" }
        format.json { render json: @siorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /siorgs/1
  # PUT /siorgs/1.json
  def update
    @siorg = Siorg.find(params[:id])

    respond_to do |format|
      if @siorg.update_attributes(params[:siorg])
        format.html { redirect_to @siorg, notice: 'Siorg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @siorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siorgs/1
  # DELETE /siorgs/1.json
  def destroy
    @siorg = Siorg.find(params[:id])
    @siorg.destroy

    respond_to do |format|
      format.html { redirect_to siorgs_url }
      format.json { head :no_content }
    end
  end

	def search
		codigo_siorg=params[:codigo_siorg]
		@siorg = Siorg.find_by_codigo(codigo_siorg)
		render 'search.js.erb'
	end
end
