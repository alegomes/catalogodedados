class CreateDatasetsFormatoDatasets < ActiveRecord::Migration

  def up
	  create_table :datasets_formato_datasets, :id => false do |t|
      t.integer :dataset_id
      t.integer :formato_dataset_id
    end
    add_index :datasets_formato_datasets, :dataset_id
    add_index :datasets_formato_datasets, :formato_dataset_id
  
		Dataset.all.each do |dataset|
			dataset.formato_datasets = [FormatoDataset.find(dataset.formato_dataset_id)]
			puts "Salvando dataset #{dataset.id} com os formatos #{dataset.formato_datasets.inspect} (#{dataset.errors.messages})"
		end

		remove_column :datasets, :formato_dataset_id
  end

  def down
		add_column :datasets, :formato_dataset_id, :integer

		Dataset.all.each do |dataset|
			dataset.formato_dataset_id = dataset.formato_datasets.first.id
			puts "Salvando dataset #{dataset.id} com os formato #{dataset.formato_dataset_id} => #{dataset.save} (#{dataset.errors.messages})"
		end

		remove_index :datasets_formato_datasets, :dataset_id
		remove_index :datasets_formato_datasets, :formato_dataset_id
		drop_table :datasets_formato_datasets
  end
end
