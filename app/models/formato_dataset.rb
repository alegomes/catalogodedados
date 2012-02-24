class FormatoDataset < ActiveRecord::Base
	validates :nome, :presence => true
end
