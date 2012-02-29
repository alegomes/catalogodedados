class OrgaosController < ApplicationController

  def index
    @orgaos = Orgao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orgaos }
    end
  end

  def show
    @orgao = Orgao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orgao }
    end
  end

  def new
    @orgao = Orgao.new
		@orgao.siorg = Siorg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orgao }
    end
  end

  def edit
    @orgao = Orgao.find(params[:id])
  end

  def create
		@orgao = Orgao.new(params[:orgao])
		@orgao.siorg = Siorg.find_by_codigo(params[:codigo_siorg]) 

    respond_to do |format|
      if @orgao.save
        format.html { redirect_to @orgao, notice: 'Orgao criado com sucesso.' }
        format.json { render json: @orgao, status: :created, location: @orgao }
      else
        format.html { render action: "new" }
        format.json { render json: @orgao.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /orgaos/1
  # PUT /orgaos/1.json
  def update
    @orgao = Orgao.find(params[:id])
		@orgao.siorg = Siorg.find_by_codigo(params[:codigo_siorg]) 

    respond_to do |format|
      if @orgao.update_attributes(params[:orgao])
        format.html { redirect_to @orgao, notice: 'Orgao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @orgao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orgaos/1
  # DELETE /orgaos/1.json
  def destroy
    @orgao = Orgao.find(params[:id])
    @orgao.destroy

    respond_to do |format|
      format.html { redirect_to orgaos_url }
      format.json { head :no_content }
    end
  end
end
