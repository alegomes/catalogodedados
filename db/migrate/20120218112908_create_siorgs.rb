class CreateSiorgs < ActiveRecord::Migration
  def change
    create_table :siorgs do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end
end
