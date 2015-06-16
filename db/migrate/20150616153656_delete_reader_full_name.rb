class DeleteReaderFullName < ActiveRecord::Migration
  def change
    remove_column :readers, :full_name, :string
  end
end
