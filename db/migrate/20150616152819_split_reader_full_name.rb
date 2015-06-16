class SplitReaderFullName < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    readers = Reader.all
    readers.each do |reader|
      split_name = reader.full_name.split(" ")
      reader.update(first_name: split_name[0], last_name: split_name[1])
    end
  end
  def down
    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
