class AddReaderIdToCheckouts < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer
    checkouts = Checkout.all
    checkouts.each do |checkout|
      checkout.update(reader_id: 1)
    end
    change_column :checkouts, :reader_id, :integer, null: false
  end

  def down
    remove_column :checkouts, :reader_id, :integer
  end
end
