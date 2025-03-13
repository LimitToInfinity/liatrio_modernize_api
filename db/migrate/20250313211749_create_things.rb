class CreateThings < ActiveRecord::Migration[8.0]
  def change
    create_table :things do |t|
      t.string :title
      t.integer :price
      t.boolean :completed

      t.timestamps
    end
  end
end
