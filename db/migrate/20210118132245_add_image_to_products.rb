class AddImageToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :image, :string
    add_column :products, :image, :json
  end
end
