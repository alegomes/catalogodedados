class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :nome
      t.text :descricao
      t.string :url
      t.string :guarda
      t.string :url_documentacao
      t.string :cobertura_temporal
      t.string :cobertura_geografica
      t.date :data_criacao
      t.date :data_disponibilizacao
      t.string :origem
      t.references :orgao
      t.references :siorg
      t.references :vcge
      t.references :granularidade_temporal
      t.references :granularidade_geografica
      t.references :formato_dataset
      t.references :tipo_dataset
      t.references :licenca

      t.timestamps
    end
    add_index :datasets, :siorg_id
    add_index :datasets, :vcge_id
    add_index :datasets, :granularidade_temporal_id
    add_index :datasets, :granularidade_geografica_id
    add_index :datasets, :formato_dataset_id
    add_index :datasets, :tipo_dataset_id
    add_index :datasets, :licenca_id
  end
end
