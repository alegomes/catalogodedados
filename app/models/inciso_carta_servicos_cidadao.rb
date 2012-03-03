class IncisoCartaServicosCidadao < ActiveRecord::Base
	has_many :obediencias
	has_many :orgaos, :through => :obediencias
end
