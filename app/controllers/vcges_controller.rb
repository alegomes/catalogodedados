class VcgesController < ApplicationController

	before_filter :authenticate_user!
	
  # GET /vcges
  # GET /vcges.json
  def index
    @vcges = Vcge.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vcges }
    end
  end

  # GET /vcges/1
  # GET /vcges/1.json
  def show
    @vcge = Vcge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vcge }
    end
  end

  # GET /vcges/new
  # GET /vcges/new.json
  def new
    @vcge = Vcge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vcge }
    end
  end

  # GET /vcges/1/edit
  def edit
    @vcge = Vcge.find(params[:id])
  end

  # POST /vcges
  # POST /vcges.json
  def create
    @vcge = Vcge.new(params[:vcge])

    respond_to do |format|
      if @vcge.save
        format.html { redirect_to @vcge, notice: 'Vcge was successfully created.' }
        format.json { render json: @vcge, status: :created, location: @vcge }
      else
        format.html { render action: "new" }
        format.json { render json: @vcge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vcges/1
  # PUT /vcges/1.json
  def update
    @vcge = Vcge.find(params[:id])

    respond_to do |format|
      if @vcge.update_attributes(params[:vcge])
        format.html { redirect_to @vcge, notice: 'Vcge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vcge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vcges/1
  # DELETE /vcges/1.json
  def destroy
    @vcge = Vcge.find(params[:id])
    @vcge.destroy

    respond_to do |format|
      format.html { redirect_to vcges_url }
      format.json { head :no_content }
    end
  end
end
