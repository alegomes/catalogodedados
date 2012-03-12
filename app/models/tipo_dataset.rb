class TipoDataset < ActiveRecord::Base
	validates :nome, :presence => true
	
	default_scope order("nome")
end
