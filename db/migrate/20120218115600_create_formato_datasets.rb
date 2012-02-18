class CreateFormatoDatasets < ActiveRecord::Migration
  def change
    create_table :formato_datasets do |t|
      t.string :nome

      t.timestamps
    end
  end
end
