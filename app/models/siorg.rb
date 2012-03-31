class Siorg < ActiveRecord::Base
	belongs_to :siorg_pai, :class_name => 'Siorg', :primary_key => :codigo, :foreign_key => :codigo_pai
	has_many :siorg_filhos, :class_name => 'Siorg', :primary_key => :codigo, :foreign_key => :codigo_pai, :order => 'codigo_pai ASC'
	
	def hierarquia()
		stack = []
		stack.push(self.nome)
		
		siorg = self
		
		# Por alguma razao, todos os codigos_pai sumiram.
		# Deixa isso aqui por enquanto ate eu descobrir o que houve
		if siorg.siorg_pai
			while siorg != siorg.siorg_pai
				stack.push(siorg.siorg_pai.nome)
				siorg = siorg.siorg_pai
			end
		end
		
		array = []
		array << stack.pop while not stack.empty?
		array
	end
	
	
end
