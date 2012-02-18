class CreateGranularidadeGeograficas < ActiveRecord::Migration
  def change
    create_table :granularidade_geograficas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
