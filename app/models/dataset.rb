class Dataset < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :siorg
  belongs_to :tipo_dataset
  belongs_to :licenca
  belongs_to :granularidade_temporal
  belongs_to :granularidade_geografica
  has_and_belongs_to_many		:vcges
  has_and_belongs_to_many		:formato_datasets

  accepts_nested_attributes_for :vcges,
		:allow_destroy => true,
	  :reject_if     => :all_blank

	validates :orgao, :nome, :descricao, :tipo_dataset, :formato_datasets, 
						:licenca, :url, :granularidade_temporal, :granularidade_geografica,
						:vcges, :presence => true
						
	before_save :check_data_atualizacao

	scope :com_nome_semelhante_a,
  lambda { |nome|
    # TODO Como ignorar o case (COLOCA O UPPER DOS 2 LADOS?)
    where("nome ilike ?", "%#{nome}%")
  }
	
	private
	def check_data_atualizacao
		self.data_atualizacao = nao_ha_data ? nil : data_atualizacao
	end
end