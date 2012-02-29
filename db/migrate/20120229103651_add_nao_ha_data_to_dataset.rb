class AddNaoHaDataToDataset < ActiveRecord::Migration
  def change
    add_column :datasets, :nao_ha_data, :boolean

  end
end
