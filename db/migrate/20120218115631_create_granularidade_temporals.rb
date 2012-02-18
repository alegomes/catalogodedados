class CreateGranularidadeTemporals < ActiveRecord::Migration
  def change
    create_table :granularidade_temporals do |t|
      t.string :nome

      t.timestamps
    end
  end
end
