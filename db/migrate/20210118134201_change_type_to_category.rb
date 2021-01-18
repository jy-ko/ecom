class ChangeTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :type, :string
    add_column :products, :category, :string
  end
end
