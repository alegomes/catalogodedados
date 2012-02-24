class TipoDataset < ActiveRecord::Base
	validates :nome, :presence => true
end
