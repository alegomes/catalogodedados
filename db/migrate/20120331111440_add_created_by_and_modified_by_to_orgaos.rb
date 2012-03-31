class AddCreatedByAndModifiedByToOrgaos < ActiveRecord::Migration
  def change
    add_column :orgaos, :created_by, :integer
    add_column :orgaos, :modified_by, :integer
  end
end
