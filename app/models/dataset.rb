class Dataset < ActiveRecord::Base
  belongs_to :orgao
  belongs_to :siorg
  belongs_to :vcge
  belongs_to :formato_dataset
  belongs_to :tipo_dataset
  belongs_to :licenca
  belongs_to :granularidade_temporal
  belongs_to :granularidade_geografica
end