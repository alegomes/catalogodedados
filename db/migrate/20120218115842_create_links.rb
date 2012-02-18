class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :tipo_link
      t.string :titulo
      t.string :url

      t.timestamps
    end
    add_index :links, :tipo_link_id
  end
end
