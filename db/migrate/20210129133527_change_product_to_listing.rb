class ChangeProductToListing < ActiveRecord::Migration[6.1]
  def change
    remove_reference :line_items, :product, index: true, foreign_key: true
    drop_table :products 
    create_table :listings do |t|
      t.string :location
      t.string :title
      t.text :description
      t.json :image
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
