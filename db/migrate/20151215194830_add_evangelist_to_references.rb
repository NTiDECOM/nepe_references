class AddEvangelistToReferences < ActiveRecord::Migration
  def change
    add_reference :references, :evangelist, index: true, foreign_key: true
  end
end
