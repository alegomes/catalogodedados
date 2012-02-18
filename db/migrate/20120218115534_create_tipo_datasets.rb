class CreateTipoDatasets < ActiveRecord::Migration
  def change
    create_table :tipo_datasets do |t|
      t.string :nome

      t.timestamps
    end
  end
end
