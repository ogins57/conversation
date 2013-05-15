class Item < ActiveRecord::Migration
  def up
      add_column :title, :string
  end

  def down
      remove_column :title, :string
  end
end
