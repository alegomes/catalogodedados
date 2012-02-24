class Licenca < ActiveRecord::Base
	validates :nome, :presence => true
end
