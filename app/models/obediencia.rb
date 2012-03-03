# QUE NOME HORRIVEL MEO DEOOOS!!!
class Obediencia < ActiveRecord::Base
	belongs_to :orgao
	belongs_to :inciso_carta_servicos_cidadao
	
	as_enum :contempla, :sim => 1, :parcialmente => 2, :nao => 3
end