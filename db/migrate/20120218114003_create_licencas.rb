class CreateLicencas < ActiveRecord::Migration
  def change
    create_table :licencas do |t|
      t.string :nome
      t.string :url

      t.timestamps
    end
  end
end
