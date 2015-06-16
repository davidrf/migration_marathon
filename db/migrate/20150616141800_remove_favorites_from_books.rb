class RemoveFavoritesFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :favorites
  end

  def down
    add_column :books, :favorites, :boolean
  end
end
