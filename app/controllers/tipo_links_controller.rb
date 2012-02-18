class TipoLinksController < ApplicationController
  # GET /tipo_links
  # GET /tipo_links.json
  def index
    @tipo_links = TipoLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_links }
    end
  end

  # GET /tipo_links/1
  # GET /tipo_links/1.json
  def show
    @tipo_link = TipoLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_link }
    end
  end

  # GET /tipo_links/new
  # GET /tipo_links/new.json
  def new
    @tipo_link = TipoLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_link }
    end
  end

  # GET /tipo_links/1/edit
  def edit
    @tipo_link = TipoLink.find(params[:id])
  end

  # POST /tipo_links
  # POST /tipo_links.json
  def create
    @tipo_link = TipoLink.new(params[:tipo_link])

    respond_to do |format|
      if @tipo_link.save
        format.html { redirect_to @tipo_link, notice: 'Tipo link was successfully created.' }
        format.json { render json: @tipo_link, status: :created, location: @tipo_link }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_links/1
  # PUT /tipo_links/1.json
  def update
    @tipo_link = TipoLink.find(params[:id])

    respond_to do |format|
      if @tipo_link.update_attributes(params[:tipo_link])
        format.html { redirect_to @tipo_link, notice: 'Tipo link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_links/1
  # DELETE /tipo_links/1.json
  def destroy
    @tipo_link = TipoLink.find(params[:id])
    @tipo_link.destroy

    respond_to do |format|
      format.html { redirect_to tipo_links_url }
      format.json { head :no_content }
    end
  end
end
