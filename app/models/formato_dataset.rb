class FormatoDataset < ActiveRecord::Base
	has_and_belongs_to_many :datasets

	validates :nome, :presence => true

	default_scope order("nome")
	
	def self.all_as_hash
		h = {}
		FormatoDataset.all.each do |formato|
			h[formato.nome] = formato.id
		end
		h
	end
end
