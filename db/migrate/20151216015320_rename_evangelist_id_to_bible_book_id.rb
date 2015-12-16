class RenameEvangelistIdToBibleBookId < ActiveRecord::Migration
  def change
    rename_column :references, :evangelist_id, :bible_book_id
  end
end
