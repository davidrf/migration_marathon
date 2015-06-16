class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null:false
      t.index :title, unique: true
    end
  end
end
