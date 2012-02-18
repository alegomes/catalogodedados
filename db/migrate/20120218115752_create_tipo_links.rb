class CreateTipoLinks < ActiveRecord::Migration
  def change
    create_table :tipo_links do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
