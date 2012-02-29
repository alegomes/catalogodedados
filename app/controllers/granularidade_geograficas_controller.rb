class GranularidadeGeograficasController < ApplicationController
  # GET /granularidade_geograficas
  # GET /granularidade_geograficas.json
  def index
    @granularidade_geograficas = GranularidadeGeografica.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @granularidade_geograficas }
    end
  end

  # GET /granularidade_geograficas/1
  # GET /granularidade_geograficas/1.json
  def show
    @granularidade_geografica = GranularidadeGeografica.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @granularidade_geografica }
    end
  end

  # GET /granularidade_geograficas/new
  # GET /granularidade_geograficas/new.json
  def new
    @granularidade_geografica = GranularidadeGeografica.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @granularidade_geografica }
    end
  end

  # GET /granularidade_geograficas/1/edit
  def edit
    @granularidade_geografica = GranularidadeGeografica.find(params[:id])
  end

  # POST /granularidade_geograficas
  # POST /granularidade_geograficas.json
  def create
    @granularidade_geografica = GranularidadeGeografica.new(params[:granularidade_geografica])

    respond_to do |format|
      if @granularidade_geografica.save
        format.html { redirect_to @granularidade_geografica, notice: 'Granularidade geografica was successfully created.' }
        format.json { render json: @granularidade_geografica, status: :created, location: @granularidade_geografica }
      else
        format.html { render action: "new" }
        format.json { render json: @granularidade_geografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /granularidade_geograficas/1
  # PUT /granularidade_geograficas/1.json
  def update
    @granularidade_geografica = GranularidadeGeografica.find(params[:id])

    respond_to do |format|
      if @granularidade_geografica.update_attributes(params[:granularidade_geografica])
        format.html { redirect_to @granularidade_geografica, notice: 'Granularidade geografica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @granularidade_geografica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /granularidade_geograficas/1
  # DELETE /granularidade_geograficas/1.json
  def destroy
    @granularidade_geografica = GranularidadeGeografica.find(params[:id])
    @granularidade_geografica.destroy

    respond_to do |format|
      format.html { redirect_to granularidade_geograficas_url }
      format.json { head :no_content }
    end
  end
end
