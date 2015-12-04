class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.integer :item_id
      t.string :title
      t.text :description
      t.integer :quality
      t.decimal :price
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
