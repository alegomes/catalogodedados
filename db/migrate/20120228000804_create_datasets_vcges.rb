class CreateDatasetsVcges < ActiveRecord::Migration
  def change
    create_table :datasets_vcges, :id => false do |t|
      t.integer :dataset_id
      t.integer :vcge_id
    end
    add_index :datasets_vcges, :dataset_id
    add_index :datasets_vcges, :vcge_id
  end

end
