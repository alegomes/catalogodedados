class Dataset < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :siorg
  belongs_to :formato_dataset
  belongs_to :tipo_dataset
  belongs_to :licenca
  belongs_to :granularidade_temporal
  belongs_to :granularidade_geografica
  has_and_belongs_to_many :vcges

  accepts_nested_attributes_for :vcges,
		:allow_destroy => true,
	  :reject_if     => :all_blank

	validates :orgao, :nome, :descricao, :tipo_dataset, :formato_dataset, 
						:licenca, :url, :granularidade_temporal, :granularidade_geografica,
						:vcges, :presence => true
						
	before_save :check_data_atualizacao
	
	private
	def check_data_atualizacao
		self.data_atualizacao = nao_ha_data ? nil : data_atualizacao
	end
end