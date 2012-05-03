#encoding: UTF-8

class OrgaosController < ApplicationController

  def index
    #@orgaos = Orgao.all
		@orgaos = Orgao.paginate(:page => params[:page], :limit => 15)

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
		IncisoCartaServicosCidadao.all.each do |inciso|
			@orgao.obediencias << Obediencia.new(
										:orgao => @orgao,
										:inciso_carta_servicos_cidadao => inciso)

		end

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
		@orgao.siorg = Siorg.find_by_codigo(params[:codigo_siorg]) # || Siorg.new
		@orgao.created_by = current_user

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
		@orgao.modified_by = current_user
		puts "Orgao modified by #{current_user}"
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

	def export_csv
		orgao = Orgao.find(params[:id])
		orgao.datasets
		
		nome_arquivo = "#{orgao.nome}.csv"

    response.content_type = 'text/plain'
    response.headers['Content-Disposition'] = "attachment; filename=#{nome_arquivo}"

    render :text => orgao.datasets_as_s
	end
	
	def search
		q = params[:q]
				
		if(q && !q.empty?)
			@orgaos = Orgao.com_nome_semelhante_a(q).paginate(:page => params[:page], :limit => 15)
		else
			@orgaos = Orgao.paginate(:page => params[:page], :limit => 15)
		end

	end
end
