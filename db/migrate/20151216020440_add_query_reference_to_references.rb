class AddQueryReferenceToReferences < ActiveRecord::Migration
  def change
    add_column :references, :query_reference, :string
  end
end
