class TipoLink < ActiveRecord::Base
	validates :tipo, :presence => true
end
