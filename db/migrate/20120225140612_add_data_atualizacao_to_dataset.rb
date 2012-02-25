class AddDataAtualizacaoToDataset < ActiveRecord::Migration

	def up
    add_column :datasets, :data_atualizacao, :date
		remove_column :datasets, :data_criacao
		remove_column :datasets, :data_disponibilizacao
	end
	
	def down
		remove_column :datasets, :data_atualizacao
		add_column :datasets, :data_criacao, :date
		add_column :datasets, :data_disponibilizacao, :date
	end

end
