class AddKeywordToReferences < ActiveRecord::Migration
  def change
    add_column :references, :keyword, :string
  end
end
