class GranularidadeTemporalsController < ApplicationController
  # GET /granularidade_temporals
  # GET /granularidade_temporals.json
  def index
    @granularidade_temporals = GranularidadeTemporal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @granularidade_temporals }
    end
  end

  # GET /granularidade_temporals/1
  # GET /granularidade_temporals/1.json
  def show
    @granularidade_temporal = GranularidadeTemporal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @granularidade_temporal }
    end
  end

  # GET /granularidade_temporals/new
  # GET /granularidade_temporals/new.json
  def new
    @granularidade_temporal = GranularidadeTemporal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @granularidade_temporal }
    end
  end

  # GET /granularidade_temporals/1/edit
  def edit
    @granularidade_temporal = GranularidadeTemporal.find(params[:id])
  end

  # POST /granularidade_temporals
  # POST /granularidade_temporals.json
  def create
    @granularidade_temporal = GranularidadeTemporal.new(params[:granularidade_temporal])

    respond_to do |format|
      if @granularidade_temporal.save
        format.html { redirect_to @granularidade_temporal, notice: 'Granularidade temporal was successfully created.' }
        format.json { render json: @granularidade_temporal, status: :created, location: @granularidade_temporal }
      else
        format.html { render action: "new" }
        format.json { render json: @granularidade_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /granularidade_temporals/1
  # PUT /granularidade_temporals/1.json
  def update
    @granularidade_temporal = GranularidadeTemporal.find(params[:id])

    respond_to do |format|
      if @granularidade_temporal.update_attributes(params[:granularidade_temporal])
        format.html { redirect_to @granularidade_temporal, notice: 'Granularidade temporal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @granularidade_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /granularidade_temporals/1
  # DELETE /granularidade_temporals/1.json
  def destroy
    @granularidade_temporal = GranularidadeTemporal.find(params[:id])
    @granularidade_temporal.destroy

    respond_to do |format|
      format.html { redirect_to granularidade_temporals_url }
      format.json { head :no_content }
    end
  end
end
