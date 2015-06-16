class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
    end
  end
end
