class AddFavoriteToBooks < ActiveRecord::Migration
  def change
    add_column :books, :favorites, :boolean
  end
end
