#encoding: UTF-8

class Orgao < ActiveRecord::Base
	belongs_to :created_by, :class_name => "User",  :foreign_key => "created_by"
	belongs_to :modified_by, :class_name => "User",  :foreign_key => "modified_by"
  belongs_to :siorg
  belongs_to :licenca
  has_many :links, :dependent => :destroy
	has_many :datasets, :dependent => :destroy
	has_many :obediencias, :dependent => :destroy
	# has_many :IncisoCartaServicosCidadao, :through => :obediencias
	
  accepts_nested_attributes_for :links,
		:allow_destroy => true,
	  :reject_if     => :all_blank

	 accepts_nested_attributes_for :obediencias,
	 	:allow_destroy => true,
	   :reject_if     => :all_blank

	validates :nome, :url, :licenca, :siorg, :presence => true
	
	default_scope order("nome ASC")
	
	scope :com_nome_semelhante_a,
  lambda { |nome|
    # TODO Como ignorar o case (COLOCA O UPPER DOS 2 LADOS?)
    where("nome ilike ?", "%#{nome}%")
  }
	
	def datasets_as_s
		#header = "nome;descricao;url;guarda;url_documentacao;formatos;cobertura_temporal;cobertura_geografica;origem;vcge;granularidade_temporal;granularidade_geografica;tipo_dataset;licenca;created_at;updated_at;data_atualizacao;comentario;nao_ha_data\n"
		header = "nome;descricao;url;tipo;termo vcge;url vcge;data do cadastro\n"
		body = ""
		self.datasets.each do |d|
			termos = ""
			vcges = ""
			formatos = ""
			
			d.vcges.each do |v|
				vcges << "#{v.uri},"
				termos << "#{/.*#(.*)$/.match(v.uri)[1]}," 
				# #{/.*[#\/](.*)$/.match(v)[1]} -> Pra resolver problema relatado pelo Marcelo				
			end
			
			#d.formato_datasets.each do |f|
			#	formatos << "#{f.nome},"
			#end
			
			#body << "\"#{nome}\";\"#{d.descricao}\";\"#{d.url}\";\"#{d.guarda}\";\"#{d.url_documentacao}\";\"#{formatos}\";\"#{d.cobertura_temporal}\";\"#{d.cobertura_geografica}\";\"#{d.origem}\";\"#{vcges}\";\"#{d.granularidade_temporal.nome}\";\"#{d.granularidade_geografica.nome}\";\"#{d.tipo_dataset.nome}\";\"#{d.licenca.nome}\";\"#{d.created_at}\";\"#{d.updated_at}\";\"#{d.data_atualizacao}\";\"#{d.comentario}\";\"#{d.nao_ha_data}\"\n"
			body << "\"#{d.nome}\";\"#{d.descricao}\";\"#{d.url}\";\"#{d.tipo_dataset.nome}\";\"#{termos}\";\"#{vcges}\";\"#{d.created_at}\";\n"
		end
		(header + body)
	end
end
