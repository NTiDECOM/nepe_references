class RenameEvangelistsToBibleBook < ActiveRecord::Migration
  def change
    rename_table :evangelists, :bible_books
  end
end
