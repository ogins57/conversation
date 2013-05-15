class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :user
      t.string :imape_path
      t.text :overview
      t.string :reliability

      t.timestamps
    end
  end
end
