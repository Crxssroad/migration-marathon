class AddFavorite < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :favorite, :boolean, null: false, default: false
  end
end
