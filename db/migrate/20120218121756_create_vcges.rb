class CreateVcges < ActiveRecord::Migration
  def change
    create_table :vcges do |t|
      t.belongs_to :termo_pai
      t.string :termo

      t.timestamps
    end
    add_index :vcges, :termo_pai_id
  end
end
