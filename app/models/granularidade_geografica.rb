class GranularidadeGeografica < ActiveRecord::Base
	validates :nome, :presence => true
end
