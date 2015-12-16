class CreateEvangelists < ActiveRecord::Migration
  def change
    create_table :evangelists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
