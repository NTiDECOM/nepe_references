class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :chapter
      t.string :versicle

      t.timestamps null: false
    end
  end
end
