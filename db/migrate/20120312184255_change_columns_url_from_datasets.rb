class ChangeColumnsUrlFromDatasets < ActiveRecord::Migration
  def up
		change_column :datasets, :url, :text
		change_column :datasets, :url_documentacao, :text
  end

  def down
		change_column :datasets, :url, :string
		change_column :datasets, :url_documentacao, :string
  end
end
